reset

set terminal pngcairo size 1920,1080 enhanced font 'Verdana,22'
set output "deltaErrorsSynth1linespoints.png"

set multiplot layout 3,2

set style data linespoints

set xtics nomirror rotate by -45
set key noenhanced

set grid xtics ytics lt 1 lc "#D3D3D3" dt 2

show grid

plot "deltaErrors1%noisePercentage.dat" using 2:xtic(1) title columnheader(2), "" u 3 t col, "" u 4 t col

plot "deltaErrors5%noisePercentage.dat" using 2:xtic(1) title columnheader(2), "" u 3 t col, "" u 4 t col

plot "deltaErrors10%noisePercentage.dat" using 2:xtic(1) title columnheader(2), "" u 3 t col, "" u 4 t col

plot "deltaErrors15%noisePercentage.dat" using 2:xtic(1) title columnheader(2), "" u 3 t col, "" u 4 t col

plot "deltaErrors25%noisePercentage.dat" using 2:xtic(1) title columnheader(2), "" u 3 t col, "" u 4 t col

plot "deltaErrors50%noisePercentage.dat" using 2:xtic(1) title columnheader(2), "" u 3 t col, "" u 4 t col

unset multiplot
