#set datafile separator ",";

set terminal postscript "Helvetica" 20
set terminal postscript color
set terminal postscript eps enhanced
set output 'longevity.eps'

#set yrange [0:9500000]

#set logscale y
set xlabel "Sleep time (s)"
set ylabel "time to drain (s)"

set key left

plot "summary.dat" using 1:2 title col with linespoints lt -1
