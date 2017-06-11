set xlabel "error"
set ylabel "throughput"

plot '../completeOPlist/completeOPlist.txt' using 4:3 with points t 'nominal', '../run_1client_fcccd_1OPs/predicted_model.txt' using 3:4 with points t '1opPredicted'
