#!/usr/local/bin/fish

set count 0
while read num letter password ; 
    set one ( echo $num|cut -d- -f1 )
    set two ( echo $num|cut -d- -f2 )
    set letter ( echo $letter | sed s/:// )
    if echo $password | fold -w 1 | head -n $one | tail -1 | grep $letter >/dev/null ;
       or echo $password | fold -w 1 | head -n $two | tail -1 | grep $letter >/dev/null ; 
        set count ( math $count + 1 )
    end
end < input_day2.txt

echo $count 
