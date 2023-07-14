#!/bin/bash -v
# ---------- Debug Infos--------
echo "--- Working directory ---"
pwd
echo "--- Files in PWD ---"
ls -l
npm --version
yarn --version



DIR="/app/shop/my-medusa-store"
if [ ! -d "$DIR" ]; then
    echo "======== Install Medusa and create shop in ${DIR} =========="
    # Create a new medusa app; simulate expected 'Continue' selection by user inout during installation
    echo "\r" | medusa new my-medusa-store --db-user postgres --db-pass mysecret --db-host postgres
    cd ${DIR}
    medusa seed -f ./data/seed.json
fi

echo "======== Starting Server =========="
cd ${DIR}
medusa develop

echo "======== DONE: Starting App  =========="

# just in case that somethings fails -> start interactive session by "docker exec -it medusa-app /bin/bash "
while true; do sleep 1; done
