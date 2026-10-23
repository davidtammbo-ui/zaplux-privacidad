# Política de privacidad de Zaplux IPTV Player

Última actualización: 23 de octubre de 2026

Zaplux es un reproductor de listas IPTV para Android (móviles, tabletas, Android TV, Google TV y Fire TV). Esta política explica qué datos maneja la app y qué hace con ellos.

## En resumen

- Zaplux **no tiene cuentas de usuario, ni publicidad, ni analítica propia, ni rastreo**. La única excepción es Chromecast: el componente de Google Cast envía a Google datos técnicos de uso (ver «Google Cast»).
- Zaplux **no envía tus datos a ningún servidor del desarrollador**: no hay servidor del desarrollador.
- Todo lo que guardas (listas, contraseñas de tus listas, favoritos, historial, ajustes, grabaciones) se queda **en tu aparato**.

## Datos que se guardan en tu aparato

- Las listas IPTV que añades: dirección, usuario y contraseña de tu proveedor, y la guía de programación.
- Favoritos, historial, progreso de películas y series, marcas, grabaciones y descargas.
- Tus ajustes (tema, idioma de audio, PIN del control parental, nombres que pones a los canales, etc.).

Estos datos no salen del aparato salvo que tú lo pidas: al exportar una copia de seguridad, al enviar tus listas a otra tele de tu red de casa, al enviar un informe de errores o al abrir un canal en otra app (ver «Conexiones que hace la app»). Además, si tienes activada la copia de seguridad de Android (en Android 9 o posterior), Android guarda en tu cuenta de Google un resumen de Zaplux (listas, favoritos, progreso y ajustes) cifrado de extremo a extremo con el bloqueo de pantalla de tu aparato: ni Google ni el desarrollador pueden leerlo. En Android 6 a 8, que no cifran esa copia, Zaplux no guarda nada en ella.

## Conexiones que hace la app

- A los servidores de **tu proveedor IPTV** y de la **guía** que tú añades, para ver canales, películas, series y la programación, y a las direcciones de logos e imágenes que vienen en tus listas.
- A las **emisoras de radio** que elijas, solo si usas «Radio del partido».
- A **GitHub** (raw.githubusercontent.com) para bajar la guía pública de deportes de España (EPG_dobleM, de davidmuma) si tienes activada «Agenda deportiva de España». Es una descarga normal: no se envía ningún dato tuyo.
- A otros aparatos de **tu red local**: para añadir listas desde el móvil con un código QR (la tele abre un servidor temporal en tu red), para enviar tus listas o la copia a otra tele y para enviar el vídeo a un Chromecast.
- A **Google Play** o **Amazon Appstore** para comprar o comprobar Zaplux Premium.
- A **servidores públicos de prueba** (de Apple, DASH Industry Forum, Amazon Web Services, la Blender Foundation e Internet Archive) solo si cargas la **lista de demostración**, que trae canales de prueba y películas libres. No se envía ningún dato tuyo.

Si usas «Abrir en otra app» o «Copiar enlace», Zaplux entrega la dirección de ese canal o película a la app que tú elijas (o al portapapeles). Esa dirección la crea tu proveedor y puede llevar dentro tu usuario y tu contraseña de la lista: compártela solo con apps de tu confianza.

## Google Cast (Chromecast)

Para enviar el vídeo a un Chromecast, Zaplux usa Google Cast, un componente de Google. Ese componente envía a Google datos técnicos de uso (búsqueda de aparatos Chromecast, sesiones de envío, modelo del aparato y versión de la app) para medir y mejorar el envío y detectar fallos. Van cifrados, Google no los comparte con terceros y ni tú ni el desarrollador podéis desactivarlo ni borrarlos. Más información en la [página de Google sobre el SDK de Cast](https://developers.google.com/cast/docs/android_sender/data_disclosure). La versión de Amazon no incluye Chromecast.

## Compras

Las compras de Zaplux Premium las gestiona la tienda (Google Play o Amazon). Zaplux solo recibe la confirmación de que has comprado Premium; **no recibe ni guarda datos de pago**. La compra se guarda en el aparato para funcionar sin conexión y no se copia a otros aparatos.

## Informes de errores

Si algo falla puedes pulsar «Enviar informe». La app prepara un texto técnico y abre tu aplicación de correo o mensajería para que **lo revises antes de enviarlo**. En la tele, donde no suele haber correo, muestra un código QR: lo abres con el móvil conectado a la misma wifi, la tele te pasa el informe por tu red de casa y lo envías desde el móvil. Antes de mostrarlo se quitan direcciones de servidores, usuarios, contraseñas, nombres de equipo e IP. Nada se envía automáticamente.

## Permisos

| Permiso | Para qué |
|---|---|
| Internet y estado de la red o del wifi | Reproducir, descargar la guía y detectar si hay conexión |
| Notificaciones | Avisos de programas y partidos, y estado de las grabaciones |
| Servicios en primer plano | Grabar, seguir sonando en segundo plano y enviar a la tele |
| Alarmas y recordatorios (lo concedes tú) | Que las grabaciones programadas empiecen a su hora |
| Al encender el aparato | Volver a programar las grabaciones |
| Almacenamiento (solo Android 9 o anterior) | Copiar grabaciones a la carpeta Películas |

## Seguridad y conservación

- Tus listas, contraseñas y ajustes se guardan en el almacenamiento privado de Zaplux, al que no pueden entrar otras apps.
- Las grabaciones y descargas se guardan en la carpeta de Zaplux del aparato. Si eliges grabar en una tarjeta o memoria USB, van a la carpeta de Zaplux de ese disco, y cualquiera que lo conecte a otro aparato puede verlas.
- Al enviar tus listas del móvil a la tele con el código de 6 cifras, la copia viaja **cifrada** con una clave que solo conocen los dos aparatos. El código no viaja por la red.
- Las copias de seguridad que exportas son un archivo que guardas tú: lleva las contraseñas de tus listas sin cifrar, así que guárdalo en un sitio seguro y no lo compartas.
- Zaplux guarda los datos mientras tengas la app instalada. Puedes borrar una lista, el historial o las grabaciones desde la app cuando quieras.

## Menores

Zaplux no recoge datos de nadie, tampoco de menores. Incluye un control parental con PIN para bloquear grupos y canales, y un modo infantil.

## Contenido

Zaplux no incluye canales ni contenido: reproduce las listas que añade el usuario, que es responsable de tener derecho a verlas.

## Borrar tus datos

Desinstalar Zaplux o borrar sus datos en los ajustes de Android elimina todo lo que guarda en el aparato.

## Quién hace Zaplux y cómo contactar

Zaplux lo desarrolla **David Fernández Ferreira**, responsable de esta política. Para cualquier duda sobre tus datos, escribe a **davidtammbo@gmail.com** (el mismo correo que figura en la ficha de la tienda). Si esta política cambia, se actualizará la fecha de arriba.

---

# Zaplux IPTV Player privacy policy (English)

Last updated: 23 October 2026

- Zaplux has **no user accounts, no ads, no own analytics and no tracking**, and **no developer server**: your data is never sent to the developer. The only exception is Chromecast: the Google Cast component sends Google technical usage data (device discovery, cast sessions, device model and app version) to measure and improve casting. It is encrypted, not shared with third parties, and neither you nor the developer can turn it off or delete it ([Google's Cast SDK page](https://developers.google.com/cast/docs/android_sender/data_disclosure)). The Amazon version does not include Chromecast.
- Your IPTV lists (including your provider's username and password), favourites, history, settings, recordings and downloads are stored **only on your device**. They leave it only if you ask: exporting a backup, sending your lists to another TV on your home network or sending an error report. If Android backup is on (Android 9 or later), Android stores a summary of Zaplux (lists, favourites, progress and settings) in your Google account, end-to-end encrypted with your screen lock: neither Google nor the developer can read it. On Android 6 to 8, which do not encrypt that backup, Zaplux stores nothing in it.
- The app connects to the IPTV and guide servers you add (and the logo and image addresses in your lists), to the radio stations you choose only if you use "Match radio", to GitHub to download the public Spanish sports guide (EPG_dobleM) if "Spanish sports agenda" is on (nothing about you is sent), to devices on your local network (QR pairing, sending to another TV, Chromecast, the error-report QR on TV), to Google Play or the Amazon Appstore to buy or check Zaplux Premium, and to public test servers (Apple, DASH Industry Forum, Amazon Web Services, Blender Foundation, Internet Archive) only if you load the demo list. "Open in another app" and "Copy link" hand the stream address, which may contain your list's username and password, to the app you choose.
- Your data is kept in Zaplux's private storage. Recordings you choose to save on an SD card or USB drive can be read by any device it is plugged into. Lists sent from your phone to the TV with the 6-digit code are encrypted end to end.
- Purchases are handled by the store. Zaplux only receives confirmation that you own Premium and never receives payment details.
- Error reports are only sent if you tap "Send report", through your own email or messaging app, after you review them. Server addresses, usernames, passwords and IP addresses are removed first.
- Zaplux does not include any channels or content. Users are responsible for the lists they add.
- Uninstalling the app or clearing its data deletes everything it stores. Zaplux is developed by **David Fernández Ferreira**, who is responsible for this policy. Contact: **davidtammbo@gmail.com** (the same as on the store listing).
