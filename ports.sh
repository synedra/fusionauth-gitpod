#!/bin/env

export REDIRECT_URL=`gp url 3000 | perl -pe 's/https/http/g'`
export FUSIONAUTH_URL=`gp url 9011 | perl -pe 's/https/http/g'`

perl -pi -e 's/REACT_APP_FUSIONAUTH/$ENV{FUSIONAUTH_URL}/g' complete-application/src/main.tsx kickstart/kickstart.json serverup.sh
perl -pi -e 's/REACT_APP_REDIRECT/$ENV{REDIRECT_URL}/g' complete-application/src/main.tsx kickstart/kickstart.json serverup.sh
