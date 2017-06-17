reset

set terminal pdfcairo size 16,9 enhanced font 'Verdana,25'
set output "DSEtimes.pdf"

set xtics nomirror rotate by -45 font ",20"

unset key

set grid ytics mytics lt 1 lc "#D3D3D3" dt 2
show grid

set style data histogram
set style histogram cluster gap 1 title offset 0,0
set style fill solid noborder
set boxwidth 0.75

set bmargin 7

set yrange [0:1440]
set ytics 60
set mytics 2

set ylabel "Time [seconds]"

set style line 1 linecolor rgb "#CC3300"

plot "data.dat" using 2:xtic(1) ls 1
