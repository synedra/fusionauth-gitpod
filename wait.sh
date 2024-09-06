#!/bin/env
echo "Waiting for the fusionauth server to start up on REACT_APP_FUSIONAUTH"
until curl --output /dev/null --silent --head --fail REACT_APP_FUSIONAUTH; do
    printf '.'
    sleep 5
done
