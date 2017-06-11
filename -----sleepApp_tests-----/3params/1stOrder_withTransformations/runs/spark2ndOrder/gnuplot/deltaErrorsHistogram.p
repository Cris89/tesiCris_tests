reset

# set terminal pngcairo size 1920,1080 enhanced font 'Verdana,18'
# set output "deltaErrorsSynth1histogram.png"
set terminal pdfcairo size 15,10 enhanced font 'Verdana,18'
set output "deltaErrorsSynth1histogram.pdf"

set encoding utf8

set multiplot layout 2,1

set xtics nomirror rotate by -45

set key reverse Left outside

set grid ytics mytics lt 1 lc "#D3D3D3" dt 2
show grid

set style line 2 linecolor "#33CC4C"
set style line 3 linecolor "#29A33D"
set style line 4 linecolor "#1F7A2E"
set style line 5 linecolor "#14521F"
set style line 6 linecolor "#CC0000"
set style line 7 linecolor "#990000"
set style line 8 linecolor "#660000"
set style line 9 linecolor "#666666"
set style line 10 linecolor "#333333"
set style line 11 linecolor "#000000"





set style data histograms
set style histogram rowstacked title offset 0,-1
set style fill solid border -1
set boxwidth 0.75

set yrange [0:100]
set ytics 10
set mytics 2

set ylabel "% configurations"

set key title "% deltaErrors ranges\n"

plot \
newhistogram "1% noisePercentage", "deltaErrors1%noisePercentage.dat" using 2:xtic(1) ls 2 title columnheader(2), for[ i = 3:11 ] "" using i ls i title columnheader(i), \
newhistogram "5% noisePercentage", "deltaErrors5%noisePercentage.dat" using 2:xtic(1) ls 2 notitle, for[ i = 3:11 ] "" using i ls i notitle, \
newhistogram "10% noisePercentage", "deltaErrors10%noisePercentage.dat" using 2:xtic(1) ls 2 notitle, for[ i = 3:11 ] "" using i ls i notitle, \
newhistogram "15% noisePercentage", "deltaErrors15%noisePercentage.dat" using 2:xtic(1) ls 2 notitle, for[ i = 3:11 ] "" using i ls i notitle, \
newhistogram "25% noisePercentage", "deltaErrors25%noisePercentage.dat" using 2:xtic(1) ls 2 notitle, for[ i = 3:11 ] "" using i ls i notitle, \
newhistogram "50% noisePercentage", "deltaErrors50%noisePercentage.dat" using 2:xtic(1) ls 2 notitle, for[ i = 3:11 ] "" using i ls i notitle





set style data histogram
set style histogram cluster gap 1 title offset 0,-1
set tmargin 3
set bmargin 7

set yrange [0:35]
set ytics 5
set mytics 2

set ylabel "% mean deltaError"

set style line 1 linecolor rgb "#0066FF"

unset key

plot \
newhistogram "1% noisePercentage", "deltaErrors1%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle, \
newhistogram "5% noisePercentage", "deltaErrors5%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle, \
newhistogram "10% noisePercentage", "deltaErrors10%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle, \
newhistogram "15% noisePercentage", "deltaErrors15%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle, \
newhistogram "25% noisePercentage", "deltaErrors25%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle, \
newhistogram "50% noisePercentage", "deltaErrors50%noisePercentageMeans.dat" using 2:xtic(1) ls 1 notitle
