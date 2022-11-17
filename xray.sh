#!/bin/sh
if [ ! -f UUID ]; then
  UUID="488526f1-2f11-4a5a-aebb-dbab522cd46e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

