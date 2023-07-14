#!/bin/bash
# ---------- Debug Infos--------
echo "--- Working directory ---"
pwd
echo "--- Files in PWD ---"
ls -l
npm --version
yarn --version

echo "======== Starting Server =========="
cd /app/shop/my-medusa-store
medusa develop

echo "======== DONE: Starting App  =========="

# just in case that somethings fails -> start interactive session by "docker exec -it medusa-app /bin/bash "
while true; do sleep 1; done
