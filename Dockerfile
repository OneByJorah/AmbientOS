FROM nginx:alpine

# Serve on an unprivileged port so the container does not need root.
# (nginx cannot bind :80 as a non-root user — the usual cause of "permission
# denied" when hardening a stock nginx image.)
COPY nginx-nonroot.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html/

RUN chown -R nginx:nginx /usr/share/nginx/html /var/cache/nginx /var/log/nginx \
    && touch /var/run/nginx.pid \
    && chown nginx:nginx /var/run/nginx.pid

USER nginx

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s \
    CMD wget --quiet --tries=1 --spider http://127.0.0.1:8080/ || exit 1
