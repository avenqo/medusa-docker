#!/bin/bash
MEDUSA_APP="svc-admin"
DIR="/app/medusa/${MEDUSA_APP}"
if [ ! -d "$DIR" ]; then
    echo "======== Install Medusa and create shop in ${DIR} =========="
    # Create a new medusa app; simulate expected 'Continue' selection by user inout during installation
    echo "y\r" | medusa new ${MEDUSA_APP}  --db-user postgres --db-pass mysecret --db-host postgres
    cd ${MEDUSA_APP}
    medusa seed -f ./data/seed.json

    # Enable admin plugin by overwriting default config with activated admin plugin
    # The admin works on localhost:9000/app (keep in mind any configured docker port mapping)
    cp ../medusa-config.js .
fi

echo "======== Starting Server =========="
cd ${DIR}
medusa develop

# just in case that somethings fails -> start interactive session by "docker exec -it medusa-app /bin/bash "
while true; do sleep 1; done
