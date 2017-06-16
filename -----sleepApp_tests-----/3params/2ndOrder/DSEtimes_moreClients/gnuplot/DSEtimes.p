reset

# set terminal pngcairo size 1920,1080 enhanced font 'Verdana,18'
# set output "deltaErrorsSynth1histogram.png"
set terminal pdfcairo size 15,10 enhanced font 'Verdana,18'
set output "DSEtimes.pdf"

set xtics nomirror rotate by -45

unset key

set grid ytics mytics lt 1 lc "#D3D3D3" dt 2
show grid

set style data histogram
set style histogram cluster gap 1 title offset 0,-1
set style fill solid noborder -1

set yrange [0:1440]
set ytics 60
set mytics 2

set ylabel "Time [seconds]"

set style line 1 linecolor rgb "#CC3300"

plot "data.dat" using 2:xtic(1) ls 1
