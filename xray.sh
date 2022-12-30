#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f3b6b997-50ad-49f0-9cac-207b442c7f96"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

