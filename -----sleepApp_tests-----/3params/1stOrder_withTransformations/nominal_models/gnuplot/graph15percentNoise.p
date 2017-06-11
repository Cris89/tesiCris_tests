reset

set terminal pngcairo size 1920,1080 enhanced font 'Verdana,22'
set output "opGraphSynth1.png"

unset key

set grid xtics ytics mxtics mytics lt 1 lc "#D3D3D3" dt 2

set style line 1 lc "#228B22" pt 7 ps 1.2

set xtics  1
set mxtics 2

set ytics  0.5
set mytics 2

set xlabel "Error"
set ylabel "Throughput   [ cycles / seconds ]"

show grid

plot '../nominal_model_15percentNoise.txt' using 5:6 with points ls 1
