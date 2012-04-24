#set datafile separator ",";

set terminal postscript "Helvetica" 20
set terminal postscript color
set terminal postscript eps enhanced
set output 'test_2nodes.eps'

#set yrange [0:9500000]

#set logscale y
set xlabel "delay requirement (s)"
set ylabel "wait time (s)"

set key left

plot "data" using 1:2 title col with linespoints lt -1,\
"" u 1:3 t col with linespoints lt -1,\
"" u 1:4 t col with linespoints lt -1,\
"" u 1:5 t col with linespoints lt -1

