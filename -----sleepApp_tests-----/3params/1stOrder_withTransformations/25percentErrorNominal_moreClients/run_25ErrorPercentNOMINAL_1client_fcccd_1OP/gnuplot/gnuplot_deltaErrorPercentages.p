set title "error_percentages_foreach OP" noenhanced

set xlabel "OPs"
set ylabel "percentage" 

plot '../deltaError.txt' using 0:1 with impulses
