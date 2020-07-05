#!/bin/sh

COLUMNS="${COLUMNS:-120}"
ROWS="${ROWS:-60}"

stty cols $COLUMNS rows $ROWS

cp -a /app/* /tmp/hiptext-0.2/

exec "$@"
