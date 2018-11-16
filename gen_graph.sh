#!/bin/bash

BASE_DIR=/home/pi/docsis-stats
TIMES="end-1d end-1w end-4w end-1y"

for i in $TIMES; do
    rrdtool graph ${BASE_DIR}/images/combined-$i.png \
    --title="28000 Bremen | All Channels | $i" \
    --vertical-label='Bits per second' \
    -W "$(date '+%F %T %Z')" \
    --start $i \
    --slope-mode \
    -w 500 -h 250 \
    -l 0 -u 1529440000 \
    --color BACK#ededed \
    --color ARROW#000000 \
    DEF:b138min=${BASE_DIR}/138000000.rrd:bandwidth:MIN \
    DEF:b138avg=${BASE_DIR}/138000000.rrd:bandwidth:AVERAGE \
    DEF:b138max=${BASE_DIR}/138000000.rrd:bandwidth:MAX \
    DEF:b138last=${BASE_DIR}/138000000.rrd:bandwidth:LAST \
    DEF:b146min=${BASE_DIR}/146000000.rrd:bandwidth:MIN \
    DEF:b146avg=${BASE_DIR}/146000000.rrd:bandwidth:AVERAGE \
    DEF:b146max=${BASE_DIR}/146000000.rrd:bandwidth:MAX \
    DEF:b146last=${BASE_DIR}/146000000.rrd:bandwidth:LAST \
    DEF:b154min=${BASE_DIR}/154000000.rrd:bandwidth:MIN \
    DEF:b154avg=${BASE_DIR}/154000000.rrd:bandwidth:AVERAGE \
    DEF:b154max=${BASE_DIR}/154000000.rrd:bandwidth:MAX \
    DEF:b154last=${BASE_DIR}/154000000.rrd:bandwidth:LAST \
    DEF:b162min=${BASE_DIR}/162000000.rrd:bandwidth:MIN \
    DEF:b162avg=${BASE_DIR}/162000000.rrd:bandwidth:AVERAGE \
    DEF:b162max=${BASE_DIR}/162000000.rrd:bandwidth:MAX \
    DEF:b162last=${BASE_DIR}/162000000.rrd:bandwidth:LAST \
    DEF:b602min=${BASE_DIR}/602000000.rrd:bandwidth:MIN \
    DEF:b602avg=${BASE_DIR}/602000000.rrd:bandwidth:AVERAGE \
    DEF:b602max=${BASE_DIR}/602000000.rrd:bandwidth:MAX \
    DEF:b602last=${BASE_DIR}/602000000.rrd:bandwidth:LAST \
    DEF:b618min=${BASE_DIR}/618000000.rrd:bandwidth:MIN \
    DEF:b618avg=${BASE_DIR}/618000000.rrd:bandwidth:AVERAGE \
    DEF:b618max=${BASE_DIR}/618000000.rrd:bandwidth:MAX \
    DEF:b618last=${BASE_DIR}/618000000.rrd:bandwidth:LAST \
    DEF:b626min=${BASE_DIR}/626000000.rrd:bandwidth:MIN \
    DEF:b626avg=${BASE_DIR}/626000000.rrd:bandwidth:AVERAGE \
    DEF:b626max=${BASE_DIR}/626000000.rrd:bandwidth:MAX \
    DEF:b626last=${BASE_DIR}/626000000.rrd:bandwidth:LAST \
    DEF:b642min=${BASE_DIR}/642000000.rrd:bandwidth:MIN \
    DEF:b642avg=${BASE_DIR}/642000000.rrd:bandwidth:AVERAGE \
    DEF:b642max=${BASE_DIR}/642000000.rrd:bandwidth:MAX \
    DEF:b642last=${BASE_DIR}/642000000.rrd:bandwidth:LAST \
    DEF:b650min=${BASE_DIR}/650000000.rrd:bandwidth:MIN \
    DEF:b650avg=${BASE_DIR}/650000000.rrd:bandwidth:AVERAGE \
    DEF:b650max=${BASE_DIR}/650000000.rrd:bandwidth:MAX \
    DEF:b650last=${BASE_DIR}/650000000.rrd:bandwidth:LAST \
    DEF:b658min=${BASE_DIR}/658000000.rrd:bandwidth:MIN \
    DEF:b658avg=${BASE_DIR}/658000000.rrd:bandwidth:AVERAGE \
    DEF:b658max=${BASE_DIR}/658000000.rrd:bandwidth:MAX \
    DEF:b658last=${BASE_DIR}/658000000.rrd:bandwidth:LAST \
    DEF:b666min=${BASE_DIR}/666000000.rrd:bandwidth:MIN \
    DEF:b666avg=${BASE_DIR}/666000000.rrd:bandwidth:AVERAGE \
    DEF:b666max=${BASE_DIR}/666000000.rrd:bandwidth:MAX \
    DEF:b666last=${BASE_DIR}/666000000.rrd:bandwidth:LAST \
    DEF:b674min=${BASE_DIR}/674000000.rrd:bandwidth:MIN \
    DEF:b674avg=${BASE_DIR}/674000000.rrd:bandwidth:AVERAGE \
    DEF:b674max=${BASE_DIR}/674000000.rrd:bandwidth:MAX \
    DEF:b674last=${BASE_DIR}/674000000.rrd:bandwidth:LAST \
    DEF:b682min=${BASE_DIR}/682000000.rrd:bandwidth:MIN \
    DEF:b682avg=${BASE_DIR}/682000000.rrd:bandwidth:AVERAGE \
    DEF:b682max=${BASE_DIR}/682000000.rrd:bandwidth:MAX \
    DEF:b682last=${BASE_DIR}/682000000.rrd:bandwidth:LAST \
    DEF:b690min=${BASE_DIR}/690000000.rrd:bandwidth:MIN \
    DEF:b690avg=${BASE_DIR}/690000000.rrd:bandwidth:AVERAGE \
    DEF:b690max=${BASE_DIR}/690000000.rrd:bandwidth:MAX \
    DEF:b690last=${BASE_DIR}/690000000.rrd:bandwidth:LAST \
    DEF:b698min=${BASE_DIR}/698000000.rrd:bandwidth:MIN \
    DEF:b698avg=${BASE_DIR}/698000000.rrd:bandwidth:AVERAGE \
    DEF:b698max=${BASE_DIR}/698000000.rrd:bandwidth:MAX \
    DEF:b698last=${BASE_DIR}/698000000.rrd:bandwidth:LAST \
    DEF:b706min=${BASE_DIR}/706000000.rrd:bandwidth:MIN \
    DEF:b706avg=${BASE_DIR}/706000000.rrd:bandwidth:AVERAGE \
    DEF:b706max=${BASE_DIR}/706000000.rrd:bandwidth:MAX \
    DEF:b706last=${BASE_DIR}/706000000.rrd:bandwidth:LAST \
    DEF:b714min=${BASE_DIR}/714000000.rrd:bandwidth:MIN \
    DEF:b714avg=${BASE_DIR}/714000000.rrd:bandwidth:AVERAGE \
    DEF:b714max=${BASE_DIR}/714000000.rrd:bandwidth:MAX \
    DEF:b714last=${BASE_DIR}/714000000.rrd:bandwidth:LAST \
    DEF:b722min=${BASE_DIR}/722000000.rrd:bandwidth:MIN \
    DEF:b722avg=${BASE_DIR}/722000000.rrd:bandwidth:AVERAGE \
    DEF:b722max=${BASE_DIR}/722000000.rrd:bandwidth:MAX \
    DEF:b722last=${BASE_DIR}/722000000.rrd:bandwidth:LAST \
    DEF:b730min=${BASE_DIR}/730000000.rrd:bandwidth:MIN \
    DEF:b730avg=${BASE_DIR}/730000000.rrd:bandwidth:AVERAGE \
    DEF:b730max=${BASE_DIR}/730000000.rrd:bandwidth:MAX \
    DEF:b730last=${BASE_DIR}/730000000.rrd:bandwidth:LAST \
    DEF:b738min=${BASE_DIR}/738000000.rrd:bandwidth:MIN \
    DEF:b738avg=${BASE_DIR}/738000000.rrd:bandwidth:AVERAGE \
    DEF:b738max=${BASE_DIR}/738000000.rrd:bandwidth:MAX \
    DEF:b738last=${BASE_DIR}/738000000.rrd:bandwidth:LAST \
    DEF:b746min=${BASE_DIR}/746000000.rrd:bandwidth:MIN \
    DEF:b746avg=${BASE_DIR}/746000000.rrd:bandwidth:AVERAGE \
    DEF:b746max=${BASE_DIR}/746000000.rrd:bandwidth:MAX \
    DEF:b746last=${BASE_DIR}/746000000.rrd:bandwidth:LAST \
    DEF:b754min=${BASE_DIR}/754000000.rrd:bandwidth:MIN \
    DEF:b754avg=${BASE_DIR}/754000000.rrd:bandwidth:AVERAGE \
    DEF:b754max=${BASE_DIR}/754000000.rrd:bandwidth:MAX \
    DEF:b754last=${BASE_DIR}/754000000.rrd:bandwidth:LAST \
    DEF:b762min=${BASE_DIR}/762000000.rrd:bandwidth:MIN \
    DEF:b762avg=${BASE_DIR}/762000000.rrd:bandwidth:AVERAGE \
    DEF:b762max=${BASE_DIR}/762000000.rrd:bandwidth:MAX \
    DEF:b762last=${BASE_DIR}/762000000.rrd:bandwidth:LAST \
    DEF:b770min=${BASE_DIR}/770000000.rrd:bandwidth:MIN \
    DEF:b770avg=${BASE_DIR}/770000000.rrd:bandwidth:AVERAGE \
    DEF:b770max=${BASE_DIR}/770000000.rrd:bandwidth:MAX \
    DEF:b770last=${BASE_DIR}/770000000.rrd:bandwidth:LAST \
    DEF:b778min=${BASE_DIR}/778000000.rrd:bandwidth:MIN \
    DEF:b778avg=${BASE_DIR}/778000000.rrd:bandwidth:AVERAGE \
    DEF:b778max=${BASE_DIR}/778000000.rrd:bandwidth:MAX \
    DEF:b778last=${BASE_DIR}/778000000.rrd:bandwidth:LAST \
    DEF:b786min=${BASE_DIR}/786000000.rrd:bandwidth:MIN \
    DEF:b786avg=${BASE_DIR}/786000000.rrd:bandwidth:AVERAGE \
    DEF:b786max=${BASE_DIR}/786000000.rrd:bandwidth:MAX \
    DEF:b786last=${BASE_DIR}/786000000.rrd:bandwidth:LAST \
    DEF:b794min=${BASE_DIR}/794000000.rrd:bandwidth:MIN \
    DEF:b794avg=${BASE_DIR}/794000000.rrd:bandwidth:AVERAGE \
    DEF:b794max=${BASE_DIR}/794000000.rrd:bandwidth:MAX \
    DEF:b794last=${BASE_DIR}/794000000.rrd:bandwidth:LAST \
    DEF:b802min=${BASE_DIR}/802000000.rrd:bandwidth:MIN \
    DEF:b802avg=${BASE_DIR}/802000000.rrd:bandwidth:AVERAGE \
    DEF:b802max=${BASE_DIR}/802000000.rrd:bandwidth:MAX \
    DEF:b802last=${BASE_DIR}/802000000.rrd:bandwidth:LAST \
    DEF:b810min=${BASE_DIR}/810000000.rrd:bandwidth:MIN \
    DEF:b810avg=${BASE_DIR}/810000000.rrd:bandwidth:AVERAGE \
    DEF:b810max=${BASE_DIR}/810000000.rrd:bandwidth:MAX \
    DEF:b810last=${BASE_DIR}/810000000.rrd:bandwidth:LAST \
    DEF:b818min=${BASE_DIR}/818000000.rrd:bandwidth:MIN \
    DEF:b818avg=${BASE_DIR}/818000000.rrd:bandwidth:AVERAGE \
    DEF:b818max=${BASE_DIR}/818000000.rrd:bandwidth:MAX \
    DEF:b818last=${BASE_DIR}/818000000.rrd:bandwidth:LAST \
    DEF:b826min=${BASE_DIR}/826000000.rrd:bandwidth:MIN \
    DEF:b826avg=${BASE_DIR}/826000000.rrd:bandwidth:AVERAGE \
    DEF:b826max=${BASE_DIR}/826000000.rrd:bandwidth:MAX \
    DEF:b826last=${BASE_DIR}/826000000.rrd:bandwidth:LAST \
    DEF:b834min=${BASE_DIR}/834000000.rrd:bandwidth:MIN \
    DEF:b834avg=${BASE_DIR}/834000000.rrd:bandwidth:AVERAGE \
    DEF:b834max=${BASE_DIR}/834000000.rrd:bandwidth:MAX \
    DEF:b834last=${BASE_DIR}/834000000.rrd:bandwidth:LAST \
    CDEF:bmin=b138min,b146min,b154min,b162min,b602min,b618min,b626min,b642min,b650min,b658min,b666min,b674min,b682min,b690min,b698min,b706min,b714min,b722min,b730min,b738min,b746min,b754min,b762min,b770min,b778min,b786min,b794min,b802min,b810min,b818min,b826min,b834min,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN \
    CDEF:bavg=b138avg,b146avg,b154avg,b162avg,b602avg,b618avg,b626avg,b642avg,b650avg,b658avg,b666avg,b674avg,b682avg,b690avg,b698avg,b706avg,b714avg,b722avg,b730avg,b738avg,b746avg,b754avg,b762avg,b770avg,b778avg,b786avg,b794avg,b802avg,b810avg,b818avg,b826avg,b834avg,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN \
    CDEF:bmax=b138max,b146max,b154max,b162max,b602max,b618max,b626max,b642max,b650max,b658max,b666max,b674max,b682max,b690max,b698max,b706max,b714max,b722max,b730max,b738max,b746max,b754max,b762max,b770max,b778max,b786max,b794max,b802max,b810max,b818max,b826max,b834max,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN \
    CDEF:blast=b138last,b146last,b154last,b162last,b602last,b618last,b626last,b642last,b650last,b658last,b666last,b674last,b682last,b690last,b698last,b706last,b714last,b722last,b730last,b738last,b746last,b754last,b762last,b770last,b778last,b786last,b794last,b802last,b810last,b818last,b826last,b834last,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN,ADDNAN \
    AREA:1529440000#D7E4CE \
    STACK:55040000#FEE4E4 \
    COMMENT:"Separate Channel Statistics\n" \
    COMMENT:" \n" \
    COMMENT:"QAM 256 (Σ 742.55 Mbit/s)\n" \
    AREA:b138avg#FF0000:"138 MHz      " \
    GPRINT:b138avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b138min:MIN:"Min %5.2lf %s   " \
    GPRINT:b138max:MAX:"Max %5.2lf %s" \
    GPRINT:b138last:LAST:"  Last %5.2lf %s\n" \
    STACK:b146avg#FF2F00:"146 MHz      " \
    GPRINT:b146avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b146min:MIN:"Min %5.2lf %s   " \
    GPRINT:b146max:MAX:"Max %5.2lf %s" \
    GPRINT:b146last:LAST:"  Last %5.2lf %s\n" \
    STACK:b154avg#FF5E00:"154 MHz      " \
    GPRINT:b154avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b154min:MIN:"Min %5.2lf %s   " \
    GPRINT:b154max:MAX:"Max %5.2lf %s" \
    GPRINT:b154last:LAST:"  Last %5.2lf %s\n" \
    STACK:b162avg#FF8D00:"162 MHz      " \
    GPRINT:b162avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b162min:MIN:"Min %5.2lf %s   " \
    GPRINT:b162max:MAX:"Max %5.2lf %s" \
    GPRINT:b162last:LAST:"  Last %5.2lf %s\n" \
    STACK:b602avg#FFBD00:"602 MHz      " \
    GPRINT:b602avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b602min:MIN:"Min %5.2lf %s   " \
    GPRINT:b602max:MAX:"Max %5.2lf %s" \
    GPRINT:b602last:LAST:"  Last %5.2lf %s\n" \
    STACK:b618avg#FFEC00:"618 MHz      " \
    GPRINT:b618avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b618min:MIN:"Min %5.2lf %s   " \
    GPRINT:b618max:MAX:"Max %5.2lf %s" \
    GPRINT:b618last:LAST:"  Last %5.2lf %s\n" \
    STACK:b626avg#E2FF00:"626 MHz      " \
    GPRINT:b626avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b626min:MIN:"Min %5.2lf %s   " \
    GPRINT:b626max:MAX:"Max %5.2lf %s" \
    GPRINT:b626last:LAST:"  Last %5.2lf %s\n" \
    STACK:b642avg#B2FF00:"642 MHz      " \
    GPRINT:b642avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b642min:MIN:"Min %5.2lf %s   " \
    GPRINT:b642max:MAX:"Max %5.2lf %s" \
    GPRINT:b642last:LAST:"  Last %5.2lf %s\n" \
    STACK:b650avg#83FF00:"650 MHz      " \
    GPRINT:b650avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b650min:MIN:"Min %5.2lf %s   " \
    GPRINT:b650max:MAX:"Max %5.2lf %s" \
    GPRINT:b650last:LAST:"  Last %5.2lf %s\n" \
    STACK:b658avg#54FF00:"658 MHz      " \
    GPRINT:b658avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b658min:MIN:"Min %5.2lf %s   " \
    GPRINT:b658max:MAX:"Max %5.2lf %s" \
    GPRINT:b658last:LAST:"  Last %5.2lf %s\n" \
    STACK:b666avg#25FF00:"666 MHz      " \
    GPRINT:b666avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b666min:MIN:"Min %5.2lf %s   " \
    GPRINT:b666max:MAX:"Max %5.2lf %s" \
    GPRINT:b666last:LAST:"  Last %5.2lf %s\n" \
    STACK:b674avg#00FF0A:"674 MHz      " \
    GPRINT:b674avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b674min:MIN:"Min %5.2lf %s   " \
    GPRINT:b674max:MAX:"Max %5.2lf %s" \
    GPRINT:b674last:LAST:"  Last %5.2lf %s\n" \
    STACK:b682avg#00FF39:"682 MHz      " \
    GPRINT:b682avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b682min:MIN:"Min %5.2lf %s   " \
    GPRINT:b682max:MAX:"Max %5.2lf %s" \
    GPRINT:b682last:LAST:"  Last %5.2lf %s\n" \
    STACK:b690avg#00FF68:"690 MHz      " \
    GPRINT:b690avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b690min:MIN:"Min %5.2lf %s   " \
    GPRINT:b690max:MAX:"Max %5.2lf %s" \
    GPRINT:b690last:LAST:"  Last %5.2lf %s\n" \
    COMMENT:" \n" \
    COMMENT:"QAM 64 (Σ 716.03 Mbit/s)\n" \
    STACK:b698avg#00FF98:"698 MHz      " \
    GPRINT:b698avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b698min:MIN:"Min %5.2lf %s   " \
    GPRINT:b698max:MAX:"Max %5.2lf %s" \
    GPRINT:b698last:LAST:"  Last %5.2lf %s\n" \
    STACK:b706avg#00FFC7:"706 MHz      " \
    GPRINT:b706avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b706min:MIN:"Min %5.2lf %s   " \
    GPRINT:b706max:MAX:"Max %5.2lf %s" \
    GPRINT:b706last:LAST:"  Last %5.2lf %s\n" \
    STACK:b714avg#00FFF6:"714 MHz      " \
    GPRINT:b714avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b714min:MIN:"Min %5.2lf %s   " \
    GPRINT:b714max:MAX:"Max %5.2lf %s" \
    GPRINT:b714last:LAST:"  Last %5.2lf %s\n" \
    STACK:b722avg#00D8FF:"722 MHz      " \
    GPRINT:b722avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b722min:MIN:"Min %5.2lf %s   " \
    GPRINT:b722max:MAX:"Max %5.2lf %s" \
    GPRINT:b722last:LAST:"  Last %5.2lf %s\n" \
    STACK:b730avg#00A8FF:"730 MHz      " \
    GPRINT:b730avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b730min:MIN:"Min %5.2lf %s   " \
    GPRINT:b730max:MAX:"Max %5.2lf %s" \
    GPRINT:b730last:LAST:"  Last %5.2lf %s\n" \
    STACK:b738avg#0079FF:"738 MHz      " \
    GPRINT:b738avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b738min:MIN:"Min %5.2lf %s   " \
    GPRINT:b738max:MAX:"Max %5.2lf %s" \
    GPRINT:b738last:LAST:"  Last %5.2lf %s\n" \
    STACK:b746avg#004AFF:"746 MHz      " \
    GPRINT:b746avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b746min:MIN:"Min %5.2lf %s   " \
    GPRINT:b746max:MAX:"Max %5.2lf %s" \
    GPRINT:b746last:LAST:"  Last %5.2lf %s\n" \
    STACK:b754avg#001AFF:"754 MHz      " \
    GPRINT:b754avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b754min:MIN:"Min %5.2lf %s   " \
    GPRINT:b754max:MAX:"Max %5.2lf %s" \
    GPRINT:b754last:LAST:"  Last %5.2lf %s\n" \
    STACK:b762avg#1400FF:"762 MHz      " \
    GPRINT:b762avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b762min:MIN:"Min %5.2lf %s   " \
    GPRINT:b762max:MAX:"Max %5.2lf %s" \
    GPRINT:b762last:LAST:"  Last %5.2lf %s\n" \
    STACK:b770avg#4300FF:"770 MHz      " \
    GPRINT:b770avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b770min:MIN:"Min %5.2lf %s   " \
    GPRINT:b770max:MAX:"Max %5.2lf %s" \
    GPRINT:b770last:LAST:"  Last %5.2lf %s\n" \
    STACK:b778avg#7200FF:"778 MHz      " \
    GPRINT:b778avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b778min:MIN:"Min %5.2lf %s   " \
    GPRINT:b778max:MAX:"Max %5.2lf %s" \
    GPRINT:b778last:LAST:"  Last %5.2lf %s\n" \
    STACK:b786avg#A200FF:"786 MHz      " \
    GPRINT:b786avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b786min:MIN:"Min %5.2lf %s   " \
    GPRINT:b786max:MAX:"Max %5.2lf %s" \
    GPRINT:b786last:LAST:"  Last %5.2lf %s\n" \
    STACK:b794avg#D100FF:"794 MHz      " \
    GPRINT:b794avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b794min:MIN:"Min %5.2lf %s   " \
    GPRINT:b794max:MAX:"Max %5.2lf %s" \
    GPRINT:b794last:LAST:"  Last %5.2lf %s\n" \
    STACK:b802avg#FF00FD:"802 MHz      " \
    GPRINT:b802avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b802min:MIN:"Min %5.2lf %s   " \
    GPRINT:b802max:MAX:"Max %5.2lf %s" \
    GPRINT:b802last:LAST:"  Last %5.2lf %s\n" \
    STACK:b810avg#FF00CD:"810 MHz      " \
    GPRINT:b810avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b810min:MIN:"Min %5.2lf %s   " \
    GPRINT:b810max:MAX:"Max %5.2lf %s" \
    GPRINT:b810last:LAST:"  Last %5.2lf %s\n" \
    STACK:b818avg#FF009E:"818 MHz      " \
    GPRINT:b818avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b818min:MIN:"Min %5.2lf %s   " \
    GPRINT:b818max:MAX:"Max %5.2lf %s" \
    GPRINT:b818last:LAST:"  Last %5.2lf %s\n" \
    STACK:b826avg#FF006F:"826 MHz      " \
    GPRINT:b826avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b826min:MIN:"Min %5.2lf %s   " \
    GPRINT:b826max:MAX:"Max %5.2lf %s" \
    GPRINT:b826last:LAST:"  Last %5.2lf %s\n" \
    STACK:b834avg#FF0040:"834 MHz      " \
    GPRINT:b834avg:AVERAGE:"Avg %5.2lf %s   " \
    GPRINT:b834min:MIN:"Min %5.2lf %s   " \
    GPRINT:b834max:MAX:"Max %5.2lf %s" \
    GPRINT:b834last:LAST:"  Last %5.2lf %s\n" \
    COMMENT:" \n" \
    COMMENT:"Overall Channel Statistics\n" \
    GPRINT:bavg:AVERAGE:"                 Avg %5.2lf %s" \
    GPRINT:bmin:MIN:"   Min %5.2lf %s" \
    GPRINT:bmax:MAX:"   Max %5.2lf %s" \
    GPRINT:blast:LAST:"  Last %5.2lf %s\n" \
    COMMENT:" \n" \
    HRULE:1529440000#000000:'Overall capacity (1458.58 Mbit/s)':dashes=5 \
    LINE1:bmax#5f5f5f:"Peak-Bandwidth"
done
