#!/bin/bash

# Read multiline input and join with commas
result=""
while IFS= read -r line; do
  if [ -n "$result" ]; then
    result="$result,$line"
  else
    result="$line"
  fi
done

echo "$result"
