set terminal pdfcairo size 16,13 font "Verdana,30"
set output "swaptionsBehavior.pdf"

set multiplot layout 2,1

set grid ytics mytics xtics mxtics lt 1 lc "#D3D3D3" dt 2
show grid

unset key

set xlabel "Time [ seconds ]"
set ylabel "avg_throughput\n[ priced swaptions / seconds ]" noenhanced

set xrange [:240]
set yrange [:27]

set xtics 60
set mxtics 4

set ytics 3
set mytics 3

set style line 1 lc "#999999" pt 7 ps 0.8
set style line 2 lc "#CC0000" pt 7 ps 0.8
set style line 3 lc "#14521F" pt 7 ps 0.8
set style line 4 lc "#33CC4C" pt 7 ps 0.8

set style line 5 lc "#999999"
set style line 6 lc "#CCCCCC" pt 6

set style line 7 lc "#0066FF" lw 2

plot [0:240] 3 ls 7, \
	"../throughputStoryFSTEPS.txt" using ($1 / 1000000):2 with steps ls 5, \
	"../throughputStorySEPARATED.txt" every :::0::0 using ($1 / 1000000):2 with points ls 6, for[ i = 1:4 ] "" every :::i::i using ($1 / 1000000):2 with points ls i



set yrange [:245]

set ytics 35
# set mytics 5

set ylabel "avg_error" noenhanced

plot [0:240] 35 ls 7, \
	"../errorStoryFSTEPS.txt" using ($1 / 1000000):2 with steps ls 5, \
	"../errorStorySEPARATED.txt" every :::0::0 using ($1 / 1000000):2 with points ls 6, for[ i = 1:4 ] "" every :::i::i using ($1 / 1000000):2 with points ls i


