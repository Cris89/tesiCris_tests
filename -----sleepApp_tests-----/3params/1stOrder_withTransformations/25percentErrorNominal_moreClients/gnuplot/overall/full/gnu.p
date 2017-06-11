clear

reset

unset key

set yrange [0:]

set style data histogram
set style histogram clustered gap 1 title offset 2,0.25
set style fill solid noborder

set boxwidth 0.95

unset xtics
set xtics nomirror rotate by -45 scale 0 font ",8"

plot 'data.dat' using 2:xtic(1)
