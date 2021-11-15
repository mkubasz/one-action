#!/bin/bash
IFS=$'\n'

echo "Test"
for v in `env`; do
  PREFIX=$(echo $v| cut -d '_' -f1)
  if [[ $PREFIX == 'GITHUB' ]] || [[ $PREFIX == 'INPUT' ]]; then
    echo "$v";
  fi
done

echo "Event"

jq $INPUT_MY_SELECTOR $GITHUB_EVENT_PATH
