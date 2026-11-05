# FielPet · Panel de conversaciones

Panel web del asistente de WhatsApp de FielPet: bandeja tipo WhatsApp Web, ficha de cada cliente, altas, contactos, métricas y configuración del bot.

## Despliegue (Easypanel)

App nueva desde este repositorio (usa el `Dockerfile`). Variables de entorno:

| Variable | Valor |
|---|---|
| `SUPABASE_URL` | URL del proyecto de Supabase |
| `SUPABASE_PUBLISHABLE_KEY` | Publishable key de Supabase (la service_role key nunca va acá) |
| `N8N_PANEL_WEBHOOK` | URL de producción del webhook del workflow "FielPet · Panel (envíos)" (`…/webhook/fielpet-panel`) |

Al arrancar, el contenedor genera `config.js` con esas variables, así que no quedan escritas en el código.

## Modo demostración

Sin esas variables (o abriendo `index.html?demo`), el panel funciona con datos de ejemplo que no se guardan. Sirve para mostrarlo antes de conectarlo.

## Requisitos

- Base de datos: `fielpet_supabase_v1.sql` corrido en Supabase.
- Workflows de n8n: *Bot WhatsApp*, *Panel (envíos)*, *Generar enlace* y *Catálogos*.

La guía completa de puesta en marcha está en el proyecto de FielPet (`LEEME.md`).
