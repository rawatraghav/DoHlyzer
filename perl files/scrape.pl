#!/usr/bin/perl

use Browser::Start;
 
system("ipconfig/flushdns");

open(DATA,"url2.txt");

$i=0;

foreach $line(<DATA>)
{

system("sudo tcpdump -c 100 -i wlp0s20f3 -w $i.pcap");

open_url $line;

$i++;

}

close(DATA)