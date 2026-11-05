#!/bin/sh
# Genera /config.js a partir de las variables de entorno del contenedor
cat > /usr/share/nginx/html/config.js <<EOC
window.FIELPET_CONFIG = {
  SUPABASE_URL: "${SUPABASE_URL}",
  SUPABASE_KEY: "${SUPABASE_PUBLISHABLE_KEY}",
  N8N_WEBHOOK: "${N8N_PANEL_WEBHOOK}"
};
EOC
echo "config.js generado"
