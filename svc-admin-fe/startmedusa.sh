#!/bin/bash
echo "======== Medusa Backend Services =========="
./start-be-admin.sh &

echo "======== Medusa Storefront =========="
# echo "--- Sleep 4 minutes ---"
sleep 3m
./start-storefront.sh &


# just in case that somethings fails -> start interactive session by "docker exec -it medusa-app /bin/bash "
# Keep running
while true; do sleep 1; done
