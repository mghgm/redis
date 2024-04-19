#!/usr/bin/bash

if [[ $# != "1" ]]; then
    >&2 echo "Usage: ./set_keys.sh [Number of Keys]"
    exit 1
fi


NUM_KEYS=$1

for i in $(seq 1 $NUM_KEYS); do
    ../src/redis-cli -n 0 SET $i $i
done
