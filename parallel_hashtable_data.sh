#!/bin/bash

touch $2

echo "value, keys inserted, insertion time (s), keys retrieved, retrieval time (s)" > $2

for value in {1..1000}
do
  output=`./parallel_$1_forcsv $value`
  echo "$value, $output" >> $2
  echo "$value..."
done
