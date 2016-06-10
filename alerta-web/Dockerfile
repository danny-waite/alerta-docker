FROM alpine:3.4

RUN addgroup -S nginx && \
    adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx

RUN apk --no-cache --update add nginx curl tar
RUN curl -sL https://github.com/alerta/angular-alerta-webui/tarball/master | tar -xzv
RUN mv alerta-angular-alerta-webui-*/app /app

ENV ALERTA_SVR_CONF_FILE /alertad.conf
ENV BASE_URL /api
ENV AUTH_REQUIRED False
ENV ADMIN_USERS not-set
ENV CUSTOMER_VIEWS False
ENV PROVIDER basic
ENV CLIENT_ID not-set
ENV CLIENT_SECRET not-set
ENV ALLOWED_EMAIL_DOMAIN *
ENV ALLOWED_GITHUB_ORGS *
ENV GITLAB_URL not-set
ENV ALLOWED_GITLAB_GROUPS *

ADD config.js.sh /config.js.sh
ADD nginx.conf /nginx.conf

EXPOSE 80
CMD nginx -c /nginx.conf
