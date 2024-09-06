#!/bin/env

export REDIRECT_URL=`gp url 3000`
export FUSIONAUTH_URL=`gp url 9011`

perl -pi -e 's/REACT_APP_FUSIONAUTH/$ENV{FUSIONAUTH_URL}/g' complete-application/src/main.tsx kickstart/kickstart.json wait.sh
perl -pi -e 's/REACT_APP_REDIRECT/$ENV{REDIRECT_URL}/g' complete-application/src/main.tsx kickstart/kickstart.json wait.sh
