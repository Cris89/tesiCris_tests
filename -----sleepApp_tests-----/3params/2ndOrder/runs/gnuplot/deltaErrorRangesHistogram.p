reset

set terminal pdfcairo size 16,15 enhanced font "Verdana,55"
set output "deltaErrorRangesSynth2spark2.pdf"

set xtics nomirror rotate by -45 font ",45"

#set key reverse outside under title "deltaError ranges [ % ]\n"
unset key

set grid ytics mytics lt 1 lc "#D3D3D3" dt 2
show grid

set style line 2 linecolor "#33CC33"
set style line 6 linecolor "#CCFF99"
set style line 7 linecolor "#E6F598"
set style line 8 linecolor "#FFCC66"
set style line 9 linecolor "#FF9933"
set style line 10 linecolor "#FF6600"
set style line 11 linecolor "#CC0000"

set style data histogram
set style histogram rowstacked title offset 0,0
set style fill solid border -1
set boxwidth 0.75

set bmargin 11

set yrange [0:100]
set ytics 10
set mytics 2

set ylabel "Configurations [ % ]"

plot \
newhistogram "1%\nnoise", "deltaErrors1%noisePercentage.dat" using ($2 + $3 + $4 + $5):xtic(1) ls 2 title columnheader(2), for[ i = 6:11 ] "" using i ls i title columnheader(i), \
newhistogram "5%\nnoise", "deltaErrors5%noisePercentage.dat" using ($2 + $3 + $4 + $5):xtic(1) ls 2 notitle, for[ i = 6:11 ] "" using i ls i notitle, \
newhistogram "10%\nnoise", "deltaErrors10%noisePercentage.dat" using ($2 + $3 + $4 + $5):xtic(1) ls 2 notitle, for[ i = 6:11 ] "" using i ls i notitle, \
newhistogram "15%\nnoise", "deltaErrors15%noisePercentage.dat" using ($2 + $3 + $4 + $5):xtic(1) ls 2 notitle, for[ i = 6:11 ] "" using i ls i notitle, \
newhistogram "25%\nnoise", "deltaErrors25%noisePercentage.dat" using ($2 + $3 + $4 + $5):xtic(1) ls 2 notitle, for[ i = 6:11 ] "" using i ls i notitle, \
newhistogram "50%\nnoise", "deltaErrors50%noisePercentage.dat" using ($2 + $3 + $4 + $5):xtic(1) ls 2 notitle, for[ i = 6:11 ] "" using i ls i notitle	
