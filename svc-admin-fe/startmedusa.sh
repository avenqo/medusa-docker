#!/bin/bash
echo "======== Medusa Backend Services =========="
./start-be-admin.sh &

echo "======== Medusa Storefront =========="
echo "--- Sleeping 3 minutes ---"
sleep 3m
./start-storefront.sh &

# Keep container running; just in case that somethings fails.
# Start interactive session by 
# "docker exec -it medusa-svc-admin-fe /bin/bash"
while true; do sleep 1; done
