reset

set terminal pdfcairo size 16,15 enhanced font 'Verdana,30'
set output "swaptions_exhaustive_tesiCris.pdf"

set xtics nomirror rotate by -45 font ",25"

set key font ",30" under nobox title "Phases\n"

set grid ytics mytics lt 1 lc "#D3D3D3" dt 2
show grid

set style line 2 linecolor "#CC0000"
set style line 3 linecolor "#0066FF"

set style data histogram
set style histogram rowstacked title offset 0,0 font ",25"
set style fill solid border -1
set boxwidth 0.4

set bmargin 8

set yrange [0:1740]
set ytics 60
set mytics 2

set ylabel "Time [seconds]"

plot "executionTimes_wrt_fullFact.dat" using 2:xtic(1) ls 2 title columnheader(2), for[ i = 3:3 ] "" using i ls i title columnheader(i)
