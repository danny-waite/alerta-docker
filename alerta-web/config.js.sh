#!/bin/ash

cat >/app/config.js << EOF
'use strict';

angular.module('config', [])
  .constant('config', {
    'endpoint'    : "$ENDPOINT",
    'provider'    : "$PROVIDER",
    'client_id'   : "$CLIENT_ID",
    'gitlab_url'  : "$GITLAB_URL",
    'colors'      : {}
  });
EOF
