reset

set terminal pdfcairo size 16,9 enhanced font 'Verdana,30'
set output "opGraphSynth2_15noisePercentage_DOEseparated.pdf"

unset key

set grid xtics ytics mxtics mytics lt 1 lc "#D3D3D3" dt 2

set style line 1 lc "#228B22" pt 7 ps 1.2

set xrange[:6]

set xtics  0.5
set mxtics 2

set ytics  0.5
set mytics 2

set xlabel "Error"
set ylabel "Throughput   [ cycles / seconds ]"

show grid

plot '../nominal_model_15percentErrorDOEseparated.txt' every :::0::0 using 5:6 with points ls 1, "" every :::1::1 using 5:6 with points ls 2
