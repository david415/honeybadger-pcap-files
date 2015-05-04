
======================
honeybadger pcap files
======================

The intent behind this git repository is to provide users and developers of the
Honeybadger TCP injection attack detection software system with pcap files that can
be used to test Honeybadger. Honeybadger can be told with a command line option to
read packets from a pcap file rather than a network interface. These pcap files are
essentially reproducible integration tests for honeybadger.

Furthermore... honeybadger now has an "integration test" called TestAllPcapFiles; run it like this:
go test -v -run TestAllPcapFiles

* honeybadger main repo - https://github.com/david415/honeybadger/

