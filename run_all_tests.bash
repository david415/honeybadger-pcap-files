#!/bin/bash

HONEYBADGER=/home/user/go/gopath/src/github.com/david415/HoneyBadger/cmd/honeyBadger/honeyBadger
h=$HONEYBADGER

for PCAP in *.pcap fox_it_pcap_files/*.pcap
do
    $h -l="." -total_max_buffer=200 -pcapfile=$PCAP 2>&1 >/dev/null | grep detected
    if [ $? -ne 0 ]; then
	echo ""
	echo "integration test with $PCAP failed."
	echo "rerun test manually like this:"
	echo "$h -l=\".\" -total_max_buffer=200 -pcapfile=$PCAP"
	echo ""
    fi
done

