cat "$@" |
    sed 's/^Debug\.js:127 \[\([^\s]\+\)\] livestat \(start\|first\|timeupdate\|chunk\)/\2,\1/g' |
    sed '/[Dd]ebug/d' |
    sed '/loading started/d' |
    sed '/audio/d' | 
    sed 's/\s*time update delay: \([^ ]\+\)\s*/,\1/g' |
    sed 's/\s*video throughput: \([^\s]\+\)\s*/,\1/g' |
    sed 's/\s*loading completed in: \([^\s]\+\)\s*/,\1/g' |
    sed 's/\s*delay: \([^\s]\+\)\s*/,\1/g' |
    sed 's/\s*buffer: \([^\s]\+\)\s*/,\1/g' |
    sed 's/\s*throughput: \([^\s]\+\)\s*/,\1/g' |
    csplit -b '%d.csv' -f '' -z - '/^start/' {*}
