#!/usr/local/bin/fish

for x in (sort -n < input_day1.txt ); 
    for y in ( sort -n < input_day1.txt ) ; 
        if [ (math $x + $y) -eq 2020 ] ; 
            echo (math "$x * $y"); 
        end ; 
    end ; 
end | uniq 