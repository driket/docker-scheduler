#!/bin/bash

set -e

FREQUENCY=${FREQUENCY:-0 1 * * *}
WEBSERVICE_URL=${WEBSERVICE_URL:-http://localhost}
METHOD=${METHOD:-GET}

echo "WEBSERVICE SCHEDULER"
echo "Webservice URL: ${WEBSERVICE_URL}"
echo "Frequency:      ${FREQUENCY}"
echo "Method:         ${METHOD}"
echo "Data:           ${DATA}"

LOGFIFO='/var/log/cron.fifo'
if [[ ! -e "$LOGFIFO" ]]; then
    mkfifo "$LOGFIFO"
fi

CMD="curl -X ${METHOD} ${WEBSERVICE_URL}"

echo -e "$FREQUENCY $CMD > $LOGFIFO 2>&1" | crontab -
crontab -l
cron
tail -f "$LOGFIFO"
