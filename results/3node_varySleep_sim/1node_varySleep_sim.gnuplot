#set datafile separator ",";

set terminal postscript "Helvetica" 20
set terminal postscript color
set terminal postscript eps enhanced
set output '3node_varySleep_sim_large.eps'

#set yrange [0:9500000]

#set logscale y
set xlabel "Sleep time (s)"
set ylabel "Wait time (s)"

set key left

plot "data" using 1:2 every 15 title col with linespoints lt -1,\
"" using 1:3 every 15 title col with linespoints lt -1,\
"" using 1:4 every 15 title col with linespoints lt -1
