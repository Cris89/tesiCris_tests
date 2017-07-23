reset

set terminal pdfcairo size 16,15 enhanced font 'Verdana,55'
set output "fullFactorial_tesiCris.pdf"

set xtics nomirror rotate by -45

set key inside nobox title "Phases\n"

set grid ytics mytics lt 1 lc "#D3D3D3" dt 2
show grid

set style line 2 linecolor "#CC0000"
set style line 3 linecolor "#0066FF"

set style data histogram
set style histogram rowstacked title offset 0,0
set style fill solid border -1
set boxwidth 0.5

set bmargin 8

set yrange [0:1680]
set ytics 120
set mytics 2

set ylabel "Time [ seconds ]"

plot "times15%noisePercentage.dat" using 2:xtic(1) ls 2 title columnheader(2), for[ i = 3:3 ] "" using i ls i title columnheader(i)
