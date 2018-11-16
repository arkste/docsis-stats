#!/bin/bash

echo 0 | sudo tee -a /sys/module/dvb_core/parameters/dvb_powerdown_on_sleep

freq64="698000000 706000000 714000000 722000000 730000000 738000000 746000000 754000000 762000000 770000000 778000000 786000000 794000000 802000000 810000000 818000000 826000000 834000000"
freq256="138000000 146000000 154000000 162000000 602000000 618000000 626000000 642000000 650000000 658000000 666000000 674000000 682000000 690000000"
for freq1 in $freq256
do
   ps -ef | grep dvbsnoop | awk '{print $2}' | xargs kill -9
   frequency=`dvbtune -f $freq1 -s 6952 -qam 256 2>&1 | grep 'tuning DVB-C' | cut -d "," -f1 | cut -d " " -f4`
   bw=`dvbsnoop -s bandwidth 8190 -n 3000 -hideproginfo | awk -F: 'END { print $NF }' | sed 's/^[ \t]*//' | awk '{print $1*1000}'`
   rrdtool update /home/pi/docsis-stats/$freq1.rrd N:$bw
   #echo QAM256 - Frequency: $frequency Bandwidth: $bw
done
for freq2 in $freq64
do
   ps -ef | grep dvbsnoop | awk '{print $2}' | xargs kill -9
   frequency=`dvbtune -f $freq2 -s 6952 -qam 64 2>&1 | grep 'tuning DVB-C' | cut -d "," -f1 | cut -d " " -f4`
   bw=`dvbsnoop -s bandwidth 8190 -n 3000 -hideproginfo | awk -F: 'END { print $NF }' | sed 's/^[ \t]*//' | awk '{print $1*1000}'`
   rrdtool update /home/pi/docsis-stats/$freq2.rrd N:$bw
   #echo QAM64 - Frequency: $frequency Bandwidth: $bw
done
