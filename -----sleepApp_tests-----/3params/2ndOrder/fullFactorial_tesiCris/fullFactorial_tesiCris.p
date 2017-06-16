reset

# set terminal pngcairo size 1920,1080 enhanced font 'Verdana,18'
# set output "deltaErrorsSynth1histogram.png"
set terminal pdfcairo size 15,10 enhanced font 'Verdana,18'
set output "fullFactorial_tesiCris.pdf"

set xtics nomirror rotate by -45

set key reverse Left outside

set grid ytics mytics lt 1 lc "#D3D3D3" dt 2
show grid

set style line 2 linecolor "#CC0000"
set style line 3 linecolor "#0066FF"





set style data histograms
set style histogram rowstacked title offset 0,-1
set style fill solid border -1
set boxwidth 0.5

set yrange [0:1560]
set ytics 60
set mytics 2

set ylabel "Time [seconds]"

set key title "Phases\n"

plot \
newhistogram "1% noisePercentage", "times1%noisePercentage.dat" using 2:xtic(1) ls 2 title columnheader(2), for[ i = 3:3 ] "" using i ls i title columnheader(i)
