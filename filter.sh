cat "$@" |
    sed 's/^Debug\.js:127 \[\([^ ]\+\)\] livestat \([^ ]\+\)/\2,\1/g' |
    sed '/^\(start\|first\|timeupdate\).*/!d' |
    sed 's/\s*time update delay: \([^ ]\+\)\s*/,\1/g' |
    sed 's/\s*delay: \([^ ]\+\)\s*/,\1/g' |
    sed 's/\s*buffer: \([^ ]\+\)\s*/,\1/g' |
    sed 's/\s*throughput: \([^ ]\+\)\s*/,\1/g' |
    csplit -b '%d.csv' -f '' -z - '/^start/' {*}
