reset

set terminal pdfcairo size 16,14 enhanced font 'Verdana,25'
set output "deltaErrorMeansSwaptions15Spark2.pdf"

set xtics nomirror rotate by -45 font ",20" noenhanced

unset key

set grid ytics mytics lt 1 lc "#D3D3D3" dt 2
show grid

set style data histogram
set style histogram cluster gap 1 title offset 0,0
set style fill solid noborder
set boxwidth 0.5

set bmargin 7

set yrange [0:100]
set ytics 10
set mytics 2

set ylabel "deltaError mean [%]"

set style line 1 linecolor rgb "#0066FF"

plot "metricsDeltaErrorsMeans.dat" using 2:xtic(1) ls 1 notitle
