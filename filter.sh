load='s/^.*\[\(.*\)\].*start\s*$/load,\1/g'
startup='s/^.*\[\([^ ]*\)\].*first time update delay: \([^ ]*\)\s*$/startup,\1,\2/g'
update='s/^.*\[\([^ ]*\)\].*timeupdate delay: \([^ ]*\) buffer: \([^ ]*\) throughput: \([^ ]*\)\s*$/update,\1,\2,\3,\4/g'
delete='/^Debug/d'
split='/^load/'

cat "$@" |
    sed "$load" |
    sed "$startup" |
    sed "$update" |
    sed "$delete" |
    csplit -b '%d.csv' -f '' -z - "$split" {*}
