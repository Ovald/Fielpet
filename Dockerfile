# Panel FielPet — página estática con nginx
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Al arrancar, genera config.js con las variables de entorno (no quedan escritas en el HTML)
COPY 40-fielpet-config.sh /docker-entrypoint.d/40-fielpet-config.sh
RUN chmod +x /docker-entrypoint.d/40-fielpet-config.sh
EXPOSE 80
