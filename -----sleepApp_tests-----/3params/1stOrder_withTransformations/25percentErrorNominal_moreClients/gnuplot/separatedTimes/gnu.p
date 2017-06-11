set key invert reverse Left outside
set key autotitle columnheader

unset xtics

set xtics nomirror rotate by -45 scale 0

set style data histogram
set style histogram rowstacked

set style fill solid border -1
set boxwidth 0.75

plot for [COL = 2:4] 'data.dat' using COL:xtic(1) t col
