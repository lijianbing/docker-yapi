#!/bin/sh
cd /app/vendors
sed -i -e 's|init\.lock|runtime/init.lock|g' server/install.js
npm install --no-optional --production --registry https://registry.npm.taobao.org

if [ ! -e "/app/runtime/init.lock" ]; then
  echo "============================="
  echo "Install server after 6s....."
  echo "============================="
  sleep 6s
  echo "============================="
  echo "Installing server ..........."
  echo "============================="
  npm run install-server
else
  echo "============================="
  echo "Connect MongoDB after 3s ...."
  echo "============================="
  sleep 3s
fi;

node /app/vendors/server/app.js
