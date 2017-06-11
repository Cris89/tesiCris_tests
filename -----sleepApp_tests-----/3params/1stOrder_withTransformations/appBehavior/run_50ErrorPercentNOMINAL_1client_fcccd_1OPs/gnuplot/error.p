set xlabel 'time(seconds)'
set ylabel 'throughput'

set ytics 0.1

set yrange [:6]

plot '../errorStory.txt' using ($1 / 1000000):2
