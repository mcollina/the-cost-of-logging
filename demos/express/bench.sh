#! /bin/sh

if [[ ! -e $1 ]]; then
  echo "script not found"
  exit 1
fi

echo "> node $1 &"

node $1 &> /dev/null &

PID=$!

CMD="autocannon -c 100 -p 10 -d 5 localhost:3000"

echo "> $CMD"

$CMD


kill -9 $PID
