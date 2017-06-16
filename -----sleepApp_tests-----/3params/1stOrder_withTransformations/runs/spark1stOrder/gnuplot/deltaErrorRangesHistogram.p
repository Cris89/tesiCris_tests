reset

set terminal pdfcairo size 16,11 enhanced font "Verdana,25"
set output "deltaErrorRangesSynth1spark1.pdf"

set xtics nomirror rotate by -45 font ",20"

set key font ",25" reverse outside under title "deltaError ranges [%]\n"

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

set style data histogram
set style histogram rowstacked title offset 0,0 font ",25"
set style fill solid border -1
set boxwidth 0.75

set bmargin 11

set yrange [0:100]
set ytics 10
set mytics 2

set ylabel "Configurations [%]"

plot \
newhistogram "1%\nnoisePercentage", "deltaErrors1%noisePercentage.dat" using 2:xtic(1) ls 2 title columnheader(2), for[ i = 3:11 ] "" using i ls i title columnheader(i), \
newhistogram "5%\nnoisePercentage", "deltaErrors5%noisePercentage.dat" using 2:xtic(1) ls 2 notitle, for[ i = 3:11 ] "" using i ls i notitle, \
newhistogram "10%\nnoisePercentage", "deltaErrors10%noisePercentage.dat" using 2:xtic(1) ls 2 notitle, for[ i = 3:11 ] "" using i ls i notitle, \
newhistogram "15%\nnoisePercentage", "deltaErrors15%noisePercentage.dat" using 2:xtic(1) ls 2 notitle, for[ i = 3:11 ] "" using i ls i notitle, \
newhistogram "25%\nnoisePercentage", "deltaErrors25%noisePercentage.dat" using 2:xtic(1) ls 2 notitle, for[ i = 3:11 ] "" using i ls i notitle, \
newhistogram "50%\nnoisePercentage", "deltaErrors50%noisePercentage.dat" using 2:xtic(1) ls 2 notitle, for[ i = 3:11 ] "" using i ls i notitle	
