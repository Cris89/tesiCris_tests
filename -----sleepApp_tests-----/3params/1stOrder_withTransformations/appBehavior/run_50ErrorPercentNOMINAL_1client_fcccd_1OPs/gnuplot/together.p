set xlabel 'time(seconds)'

set ytics 0.1

set yrange [:6]

plot '../throughputStory.txt' using ($1 / 1000000):2 t 'throughput', '../errorStory.txt' using ($1 / 1000000):2 t 'error'
