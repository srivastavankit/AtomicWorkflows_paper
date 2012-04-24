#set datafile separator ",";

set terminal postscript "Helvetica" 20
set terminal postscript color
set terminal postscript eps enhanced
set output '2node_both.eps'

#set xrange [0:0.8]
set yrange [0:0.95]

#set logscale y
set xlabel "Sleep time (s)"
set ylabel "Wait time (s)"

#set key left

plot "data" u 1:2 title col with linespoints lt -1,\
"" u 1:3 title col with linespoints lt -1,\
"" u 1:4 title col with linespoints lt -1,\
"" u 1:5 title col with linespoints lt -1,\
(x+0.3)/2.0 title "model (prototype)" with linespoints lt -1
