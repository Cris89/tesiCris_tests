set xlabel 'time(seconds)'
set ylabel 'throughput'

set ytics 0.1

plot '../throughputStory.txt' using ($1 / 1000000):2
