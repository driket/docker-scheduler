#!/bin/bash

set -e

FREQUENCY=${FREQUENCY:-0 1 * * *}
WEBSERVICE_URL=${WEBSERVICE_URL:'http://localhost'}
METHOD=${METHOD:'GET'}
DATA=${DATA:''}

echo "WEBSERVICE SCHEDULER"
echo "Webservice URL: ${WEBSERVICE_URL}"
echo "Frequency:      ${FREQUENCY}"
echo "Method:         ${METHOD}"
echo "Data:           ${DATA}"
