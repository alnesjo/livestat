clear
reset

bin_width = 0.02;
bin_number(x) = floor(x/bin_width)
rounded(x) = bin_width * ( bin_number(x) + 0.5 )

set boxwidth bin_width/2 absolute
set style fill solid 1.0 noborder
set style arrow 1 nohead front lw 2 dashtype 2 lc rgb "0x3f000000"

set datafile separator ','
file1 = 'localhost.livesim.chunkdur_1.ato_7.testpic4_8s/stats.csv'
file2 = 'localhost.livesim.chunkdur_2.ato_6.testpic4_8s/stats.csv'
file3 = 'localhost.livesim.chunkdur_4.ato_4.testpic4_8s/stats.csv'

set ylabel 'Frequency'
set xlabel 'Time (s)'
set key title 'Fragment duration'

stats file1 using 2
median1 = STATS_median
stats file2 using 2
median2 = STATS_median
stats file3 using 2
median3 = STATS_median

print median1, median2, median3
