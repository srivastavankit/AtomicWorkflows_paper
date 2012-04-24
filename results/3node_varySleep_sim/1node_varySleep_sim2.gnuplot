#set datafile separator ",";

set terminal postscript "Helvetica" 20
set terminal postscript color
set terminal postscript eps enhanced
set output '3node_varySleep_sim_small.eps'

set xrange [0:0.65]
set yrange [0:2.0]

#set logscale y
set xlabel "Sleep time (s)"
set ylabel "Wait time (s)"

set key left

plot "data" using 1:2 every 1 title col with linespoints lt -1,\
"" using 1:3 every 1 title col with linespoints lt -1,\
"" using 1:4 every 1 title col with linespoints lt -1,\
#(x/2.0)+(1.5*((0.666*x)**2))/(1-(1.5*(0.666*x))) title "model" with linespoints lt -1
