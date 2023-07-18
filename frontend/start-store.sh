#!/bin/bash
MEDUSA_APP="storefront"
DIR="/app/medusa/${MEDUSA_APP}"

if [ ! -d "$DIR" ]; then
  echo "======== Install Medusa Storefront in ${DIR} =========="
  echo "\r" | npx create-next-app -e https://github.com/medusajs/nextjs-starter-medusa ${MEDUSA_APP}
  cp .env.local ${DIR}/
fi
echo "======== Starting Storefront in ${DIR} =========="
cd ${DIR}
npm run dev

# just in case that somethings fails -> start interactive session by "docker exec -it medusa-app /bin/bash "
while true; do sleep 1; done
