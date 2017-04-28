#!/bin/ash

cat >/alertad.conf << EOF
MONGO_URI = '$MONGO_URI'
DEBUG = False
SECRET_KEY = '$(< /dev/urandom tr -dc A-Za-z0-9_\!\@\#\$\%\^\&\*\(\)-+= | head -c 32)'
BASE_URL = '$BASE_URL'

AUTH_REQUIRED = $AUTH_REQUIRED
ADMIN_USERS = ['$ADMIN_USERS']
CUSTOMER_VIEWS = $CUSTOMER_VIEWS
OAUTH2_CLIENT_ID = '$CLIENT_ID'
OAUTH2_CLIENT_SECRET = '$CLIENT_SECRET'
ALLOWED_EMAIL_DOMAINS = ['$ALLOWED_EMAIL_DOMAIN']
CORS_ORIGINS = ['$CORS_ORIGINS']

PLUGINS = []
EOF
