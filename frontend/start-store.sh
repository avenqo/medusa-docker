#!/bin/bash

DIR="/app/medusa/storefront"
if [ ! -d "$DIR" ]; then
    echo "======== Install Medusa Storefront =========="
    # Create a new medusa app; simulate expected 'Continue' selection by user inout during installation
    echo "y\r" | npx create-next-app -e https://github.com/medusajs/nextjs-starter-medusa storefront
    cd ${DIR}
    # Overwrite configuration
    cp ../.env.template .
fi

echo "======== Starting Storefront =========="
cd ${DIR}
# npm run dev

# just in case that somethings fails -> start interactive session by "docker exec -it medusa-app /bin/bash "
while true; do sleep 1; done
