clear
reset

set style fill solid 1.0 noborder
set style arrow 1 nohead front lw 1 dashtype 2 lc rgb "0x3f000000"

set datafile separator ','

set ylabel 'Mbps'
set xlabel 'Time (s)'

set xrange [0 to 180]
set yrange [0 to 30]

plot '-' with steps dashtype 2 title 'Simulated', \
     'throughput_25-20-15_firstchunk/chunk.csv' using ($1/1000):($3/1000) with lines title 'First chunk', \
     'throughput_25-20-15_allchunks/chunk.csv' using ($1/1000):($3/1000) with lines title 'All chunks', \
     'throughput_25-20-15_notchunked/chunk.csv' using ($1/1000):($3/1000) with lines title 'Not chunked'
0,25
60,20
120,15
180,15
