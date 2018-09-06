#!/bin/bash

RUN_SH="/usr/share/apacheds/bin/apacheds.sh"

if [ ! -d "/usr/share/apacheds/instances/$INSTANCE" ]; then
  mkdir "/usr/share/apacheds/instances/$INSTANCE"
fi
if [ ! -d "/usr/share/apacheds/instances/$INSTANCE/config" ]; then
  cp -r /usr/share/apacheds/instances/default/* /usr/share/apacheds/instances/$INSTANCE
fi

eval "$RUN_SH $INSTANCE $@"
