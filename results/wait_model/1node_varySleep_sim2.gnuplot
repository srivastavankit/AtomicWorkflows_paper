#set datafile separator ",";

set terminal postscript "Helvetica" 20
set terminal postscript color
set terminal postscript eps enhanced
set output 'sleep_model_2nodes.eps'

set xrange [0:0.3]
set yrange [0:0.45]

#set logscale y
set xlabel "Sleep time (s)"
set ylabel "Wait time (s)"

#set key left

#plot "data_3n_100" using 1:2 every 1 title col with linespoints lt -1,\
#(x/2.0) title "model (sleep only)" w linespoints lt -1,\
#"data_2n_110" u 1:2 every 1 title col with linespoints lt -1,\
#(x/2.0) + ((1.666*((x**2))/(1-(1.666*(x) )))) title "3 nodes model upper approx." w linespoints lt -1,\
#(x/2.0) + ((1.833*(((x/2.0)**2))/(1-(1.833*((x/2.0)) )))) title "2 nodes model upper approx." w linespoints lt -1,\
#"data_2n_190" u 1:2 every 1 title col with linespoints lt -1,\
#(x/2.0) + ((3.166*(((x/2.0)**2))/(1-(3.166*((x/2.0)) )))) title "2 nodes model upper approx." w linespoints lt -1

plot "data_2n_110" u 1:2 every 1 title col with linespoints lt -1,\
"data_2n_190" u 1:2 every 1 title col with linespoints lt -1,\
(x/2.0) title "model (sleep lower bound)" w linespoints lt -1,\
(x/2.0) + ((1.833*(((x/2.0)**2))/(1-(1.833*((x/2.0)) )))) title "2 nodes model upper approx. (l=1.833persec)" w linespoints lt -1,\
(x/2.0) + ((3.166*(((x/2.0)**2))/(1-(3.166*((x/2.0)) )))) title "2 nodes model upper approx. (l=3.166persec)" w linespoints lt -1
