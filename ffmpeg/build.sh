#!/bin/bash
# Compila FFmpeg para la extensión de Media3 (ver .github/workflows/ffmpeg.yml). Basado en build_ffmpeg.sh de Media3 1.11.1,
# con dos cambios:
#  - Librerías compartidas (libavcodec.so, libavutil.so, libswresample.so) en vez de estáticas: así la app solo enlaza con
#    ellas, como pide la LGPL para una app que no es libre (https://ffmpeg.org/legal.html).
#  - Alineadas a 16 KB (lo exige Google Play en arm64 con targetSdk 35 o más).
# Sin --enable-gpl ni --enable-nonfree: FFmpeg queda en LGPL 2.1. Solo decodificadores de audio que los aparatos no suelen
# traer; AAC, H.264 y HEVC los hace el sistema.
# Uso: build.sh <fuentes de FFmpeg> <NDK> <salida>
set -eu

SRC="$1"
NDK="$2"
OUT="$3"
API=23
JOBS="$(nproc 2> /dev/null || echo 4)"
TC="$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin"

# «mp3» decodifica las capas I, II y III (Media3 le pasa también el MP2 y el MP1); mlp acompaña a truehd
DECODERS="mp1 mp2 mp3 ac3 eac3 dca truehd mlp vorbis opus flac alac pcm_alaw pcm_mulaw amrnb amrwb"

COMMON="
    --target-os=android
    --enable-shared
    --disable-static
    --disable-doc
    --disable-programs
    --disable-everything
    --disable-avdevice
    --disable-avformat
    --disable-swscale
    --disable-postproc
    --disable-avfilter
    --disable-symver
    --enable-swresample
    --disable-v4l2-m2m
    --disable-vulkan
    --nm=$TC/llvm-nm
    --ar=$TC/llvm-ar
    --ranlib=$TC/llvm-ranlib
    --strip=$TC/llvm-strip
    "
for d in $DECODERS; do COMMON="$COMMON --enable-decoder=$d"; done
PAGE="-Wl,-z,max-page-size=16384"

build() {
    local abi="$1"; shift
    echo "== $abi"
    (cd "$SRC" && ./configure --prefix="$OUT/$abi" --libdir="$OUT/$abi/lib" --incdir="$OUT/$abi/include" "$@" $COMMON \
        && make -j"$JOBS" && make install-libs install-headers && make distclean)
}

build armeabi-v7a --arch=arm --cpu=armv7-a --cross-prefix="$TC/armv7a-linux-androideabi$API-" \
    --extra-cflags="-march=armv7-a -mfloat-abi=softfp" --extra-ldflags="-Wl,--fix-cortex-a8 $PAGE"
build arm64-v8a --arch=aarch64 --cpu=armv8-a --cross-prefix="$TC/aarch64-linux-android$API-" --extra-ldflags="$PAGE"
build x86 --arch=x86 --cpu=i686 --cross-prefix="$TC/i686-linux-android$API-" --disable-asm --extra-ldflags="$PAGE"
build x86_64 --arch=x86_64 --cpu=x86-64 --cross-prefix="$TC/x86_64-linux-android$API-" --disable-asm --extra-ldflags="$PAGE"

# Comprobación: cada .so con su nombre sin versión (Android no carga «libavcodec.so.60») y alineado a 16 KB
for f in "$OUT"/*/lib/*.so; do
    "$TC/llvm-readelf" -d "$f" | grep -E "SONAME|NEEDED" | sed "s|^|$(basename "$(dirname "$(dirname "$f")")")/$(basename "$f"): |"
    "$TC/llvm-readelf" -l "$f" | awk '/LOAD/ {print "  align", $NF}' | head -1
done | tee "$OUT/COMPROBACION.txt"
# Para la LGPL: con qué se ha configurado
echo "$COMMON" | tr -s ' \n' '\n' | sed '/^$/d' > "$OUT/CONFIGURE_FLAGS.txt"
