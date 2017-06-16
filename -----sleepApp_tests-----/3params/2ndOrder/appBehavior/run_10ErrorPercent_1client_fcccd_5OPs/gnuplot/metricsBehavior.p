# set terminal pngcairo size 1920,1080 enhanced font 'Verdana,18'
# set output "deltaErrorsSynth1histogram.png"
set terminal pdfcairo size 15,10 enhanced font 'Verdana,18'
set output "metricsBehavior.pdf"

set xlabel 'time(seconds)'

set ytics 0.2
set mytics 2

set grid ytics mytics lt 1 lc "#D3D3D3" dt 2
show grid

plot '../throughputStory.txt' using ($1 / 1000000):2 t 'throughput', '../errorStory.txt' using ($1 / 1000000):2 t 'error'
