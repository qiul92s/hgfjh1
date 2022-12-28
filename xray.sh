#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9316494f-a34a-42fd-ae1b-9db47eee33d4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

