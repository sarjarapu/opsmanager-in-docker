#!/usr/bin/env bash
set -e

stop_mms()
{
    echo "Stopping mongodb-mms"
    /opt/mongodb/mms/bin/mongodb-mms stop
    echo "Stopped the Ops Manager."
}

case "$1" in
    "app" | "mongodb-mms")
        trap stop_mms HUP INT QUIT KILL TERM
        /opt/mongodb/mms/bin/mongodb-mms start
        echo "Successfully started the Ops Manager."
        while true ; do
            sleep 1000
        done
        ;;
    *)
        exec "$@"
        ;;
esac
