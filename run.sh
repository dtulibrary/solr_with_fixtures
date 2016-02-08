#!/bin/bash
port="-P"
if [ "$1" = "-p" ]; then
  if [ -z $2 ]; then
    echo "Missing port number"
    exit 1
  else
    port="-p $2:8983"
  fi
fi
exec docker run --rm=true -ti $port --name solr5 dtu/solr_with_fixtures:5.3
