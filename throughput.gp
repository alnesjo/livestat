clear
reset

set style fill solid 1.0 noborder
set style arrow 1 nohead front lw 1 dashtype 2 lc rgb "0x3f000000"

set datafile separator ','

set ylabel 'Mbps'
set xlabel 'Time (s)'

file1 = 'throughput_20-50-100_firstchunk/timeupdate.csv'

set xrange [0 to 180]
set yrange [0 to 100]

plot '-' with steps dashtype 2 title 'Simulated', \
     'throughput_20-50-100_firstchunk/timeupdate.csv' using ($1/1000):($4/1000) with lines title 'First chunk', \
     'throughput_20-50-100_allchunks/timeupdate.csv' using ($1/1000):($4/1000) with lines title 'All chunks', \
     'throughput_20-50-100_notchunked/timeupdate.csv' using ($1/1000):($4/1000) with lines title 'Not chunked'
0,20
60,50
120,100
180,100
