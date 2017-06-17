set terminal pdfcairo size 16,13 font "Verdana,30"
set output "appBehavior.pdf"

set multiplot layout 2,1

set grid ytics mytics xtics mxtics lt 1 lc "#D3D3D3" dt 2
show grid

unset key

set xlabel "Time [ seconds ]"
set ylabel "Throughput [ jobs / seconds ]"

set xrange [:420]
set yrange [:6]

set xtics 60
set mxtics 2

set ytics 1
set mytics 4

set style line 1 lc "#999999" pt 7 ps 0.8
set style line 2 lc "#CC0000" pt 7 ps 0.8
set style line 3 lc "#14521F" pt 7 ps 0.8
set style line 4 lc "#33CC4C" pt 7 ps 0.8
set style line 5 lc "#999999"

plot "../throughputStoryUNIFIED.txt" using ($1 / 1000000):2 with steps ls 5, \
	"../throughputStory.txt" every :::0::0 using ($1 / 1000000):2 with points ls 1, for[ i = 1:3 ] "" 		every :::i::i using ($1 / 1000000):2 with points ls i+1





set ylabel "Error"

plot "../errorStoryUNIFIED.txt" using ($1 / 1000000):2 with steps ls 5, \
	"../errorStory.txt" every :::0::0 using ($1 / 1000000):2 with points ls 1, for[ i = 1:3 ] "" 		every :::i::i using ($1 / 1000000):2 with points ls i+1


