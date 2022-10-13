#!/bin/bash

INLETS_VERSION=`cat inlets_version`

if [ ! -f "./bin/inlets" ]; then
  wget "https://github.com/inlets/inlets-pro/releases/download/$INLETS_VERSION/inlets-pro" -O "./bin/inlets"
fi

chmod a+x ./bin/inlets
./bin/inlets server --port=$PORT --token="$TOKEN"
