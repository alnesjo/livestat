clear
reset

set style fill solid 1.0 noborder
set style arrow 1 nohead front lw 1 dashtype 2 lc rgb "0x3f000000"

set datafile separator ','

set ylabel 'Mbps'
set xlabel 'Time (s)'

set xrange [0 to 120]
set yrange [0 to 10]

plot '-' with steps dashtype 2 title 'Simulated', \
     'throughput_2-4-6-8_firstchunk/chunk.csv' using ($1/1000):($3/1000) with lines title 'First chunk', \
     'throughput_2-4-6-8_allchunks/chunk.csv' using ($1/1000):($3/1000) with lines title 'All chunks'
0,2
30,4
60,6
90,8
120,8
