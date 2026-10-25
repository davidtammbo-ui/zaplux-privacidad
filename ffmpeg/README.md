# FFmpeg en Zaplux

Zaplux usa **FFmpeg 6.0** (rama `release/6.0`, commit `573f2b81ebd97da81def2ba762e81b0328547004`) para decodificar el
sonido que algunos aparatos no saben reproducir (MPEG/MP2, Dolby Digital, DTS, TrueHD, Opus, FLAC…).

- Licencia: **GNU LGPL 2.1 o posterior** (https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html). FFmpeg es de sus
  autores (https://ffmpeg.org); Zaplux no es dueño de FFmpeg ni lo ha modificado.
- Se compila sin `--enable-gpl` ni `--enable-nonfree`, como librerías compartidas (`libavcodec.so`, `libavutil.so`,
  `libswresample.so`) que la app carga aparte. Puedes sustituirlas por otras compiladas por ti.

## Archivos

| Archivo | Qué es |
|---|---|
| `ffmpeg-6.0-573f2b81-source.tar.gz` | El código fuente exacto de FFmpeg que se ha compilado, sin cambios |
| `CONFIGURE_FLAGS.txt` | Las opciones de `configure` (`$NDK`: Android NDK 27.0.12077973) |
| `build.sh` | El script que lo compila para armeabi-v7a, arm64-v8a, x86 y x86_64 (API 23) |
| `ffmpeg_jni.cc` | El puente con Java de AndroidX Media3 1.11.1 (licencia Apache 2.0), sin cambios |

---

# FFmpeg in Zaplux

Zaplux uses **FFmpeg 6.0** (branch `release/6.0`, commit `573f2b81ebd97da81def2ba762e81b0328547004`) to decode audio some
devices cannot play. FFmpeg is licensed under the **GNU LGPL 2.1 or later**, built without GPL or non-free components as
shared libraries loaded separately by the app, which you may replace with your own build. The files above are the exact,
unmodified source code, the configure flags, the build script and the AndroidX Media3 JNI bridge (Apache 2.0).
