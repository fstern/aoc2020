#!/usr/local/bin/fish

set count 0
while read num letter password ; 
    set one ( echo $num|cut -d- -f1 )
    set two ( echo $num|cut -d- -f2 )
    set letter ( echo $letter | sed s/:// )
    echo $password | fold -w 1 | head -n $one | tail -1 | grep $letter >/dev/null ; set r1 $status ;
    echo $password | fold -w 1 | head -n $two | tail -1 | grep $letter >/dev/null ; set r2 $status ;
    if test $r1 -ne $r2 ; 
        set count ( math $count + 1 )
    end
end < input_day2.txt 

echo $count 
