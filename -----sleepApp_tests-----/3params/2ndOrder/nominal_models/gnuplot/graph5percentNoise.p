reset

# set terminal pngcairo size 1920,1080 enhanced font 'Verdana,18'
# set output "deltaErrorsSynth1histogram.png"
set terminal pdfcairo size 16,9 enhanced font 'Verdana,30'
set output "opGraphSynth2.pdf"

unset key

set grid xtics ytics mxtics mytics lt 1 lc "#D3D3D3" dt 2

set style line 1 lc "#228B22" pt 7 ps 0.8

set xrange[:6]

set xtics  1
set mxtics 2

set ytics  0.5
set mytics 2

set xlabel "Error"
set ylabel "Throughput   [ jobs / seconds ]"

show grid

plot '../nominal_model_5percentError.txt' using 5:6 with points ls 1
