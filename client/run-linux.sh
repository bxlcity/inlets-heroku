#!/bin/bash

TOKEN="you_password"
REMOTE="your_app.herokuapp.com"
LOCALPORT=80
INLETS_VERSION=`cat ../inlets_version`

if [ ! -f "../bin/inlets" ]; then
  wget "https://github.com/inlets/inlets-pro/releases/download/$INLETS_VERSION/inlets-pro" -O "../bin/inlets"
fi

chmod a+x ../bin/inlets
../bin/inlets client --remote=$REMOTE --upstream=http://127.0.0.1:$LOCALPORT --token $TOKEN
