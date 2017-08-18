clear
reset

# Each bar is half the (visual) width of its x-range.
set boxwidth 0.1 absolute
set style fill solid 1.0 noborder
set style arrow 1 nohead front lw 2 dashtype 2

bin_width = 0.2;
bin_number(x) = floor(x/bin_width)
rounded(x) = bin_width * ( bin_number(x) + 0.5 )

file1 = 'localhost.livesim.chunkdur_1.ato_7.testpic4_8s/delay.dat'

set ylabel 'Frequency'
set xlabel 'Time (s)'
set key title 'Chunk duration'


stats file1
set arrow from STATS_median, graph 0 to STATS_median, graph 1 arrowstyle 1 lc rgb "0x3f000000" 
plot file1 using (rounded($1)):(1) smooth frequency with boxes title '1s'
