#!/bin/bash
DIR="/app/medusa/storefront"

echo "======== Starting Storefront =========="
cd ${DIR}
npm run dev

# just in case that somethings fails -> start interactive session by "docker exec -it medusa-app /bin/bash "
while true; do sleep 1; done
