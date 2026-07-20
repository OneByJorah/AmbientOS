FROM nginx:1.27-alpine

# Serve the full static wallpaper app (index.html + settings.html + JS + presets + vendor).
COPY index.html settings.html parser.js worker.js renderer-core.js presets.json /usr/share/nginx/html/
COPY vendor/ /usr/share/nginx/html/vendor/

# Drop root: nginx runs its worker as the built-in nginx user; the master still
# needs port 80, so we keep the default image user and restrict file perms.
RUN chown -R nginx:nginx /usr/share/nginx/html && chmod -R 555 /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1/ >/dev/null 2>&1 || exit 1

CMD ["nginx", "-g", "daemon off;"]
