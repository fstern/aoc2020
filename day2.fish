#!/usr/local/bin/fish

set count 0
while read num letter password ; 
    set min ( echo $num|cut -d- -f1 )
    set max ( echo $num|cut -d- -f2 )
    set letter ( echo $letter | sed s/:// )
    if test ( echo $password | fold -w 1 | grep -c $letter ) -ge $min 
       and test ( echo $password | fold -w 1 | grep -c $letter ) -le $max ;
        set count ( math $count + 1 )
    end
end < input_day2.txt

echo $count 
