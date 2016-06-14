#!/bin/ash

cat >/app/config.js << EOF
'use strict';

angular.module('config', [])
  .constant('config', {
    'endpoint'    : "$ENDPOINT",
    'client_id'   : "$CLIENT_ID",
    'colors'      : {}
  });
EOF
