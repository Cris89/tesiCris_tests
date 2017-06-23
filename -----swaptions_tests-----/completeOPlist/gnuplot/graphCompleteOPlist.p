reset

# set terminal pngcairo size 1920,1080 enhanced font 'Verdana,18'
# set output "deltaErrorsSynth1histogram.png"
set terminal pdfcairo size 16,9 enhanced font 'Verdana,30'
set output "swaptionsOPgraph.pdf"

unset key

set grid xtics ytics mxtics mytics lt 1 lc "#D3D3D3" dt 2

set style line 1 lc "#228B22" pt 7 ps 0.8

set xtics  10
set mxtics 2

set ytics  2
set mytics 2

set xlabel "avg_error" noenhanced
set ylabel "avg_throughput\n[ priced swaptions / second ]" noenhanced

show grid

plot '../completeOPlist.txt' using 3:4 with points ls 1
