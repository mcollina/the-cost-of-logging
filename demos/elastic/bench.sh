#! /bin/sh

DEST=/tmp/out

echo "> node pino-server | pino-elasticsearch"

mkfifo $DEST

node pino-server > $DEST &

PID=$!

pino-elasticsearch < $DEST &

CMD="autocannon -c 100 -p 10 -d 5 localhost:3000"

echo "> $CMD"

$CMD

kill -9 $PID

rm $DEST
