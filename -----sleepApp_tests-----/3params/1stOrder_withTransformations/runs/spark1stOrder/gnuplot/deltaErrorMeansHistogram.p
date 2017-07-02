reset

set terminal pdfcairo size 16,9 enhanced font 'Verdana,30'
set output "deltaErrorMeansSynth1spark1.pdf"

set xtics nomirror rotate by -45 font ",25"

unset key

set grid ytics mytics lt 1 lc "#D3D3D3" dt 2
show grid

set style data histogram
set style histogram cluster gap 1 title offset 0,0 font ",25"
set style fill solid noborder
set boxwidth 0.75

set bmargin 7

set yrange [0:10]
set ytics 2
set mytics 2

set ylabel "deltaError mean [%]"

set style line 1 linecolor rgb "#0066FF"

plot \
newhistogram "1%\nnoisePercentage", "deltaErrors1%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle, \
newhistogram "5%\nnoisePercentage", "deltaErrors5%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle, \
newhistogram "10%\nnoisePercentage", "deltaErrors10%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle, \
newhistogram "15%\nnoisePercentage", "deltaErrors15%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle, \
newhistogram "25%\nnoisePercentage", "deltaErrors25%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle, \
newhistogram "50%\nnoisePercentage", "deltaErrors50%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle
