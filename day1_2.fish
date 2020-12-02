#!/usr/local/bin/fish

for x in (sort -n < input_day1.txt ); 
    for y in ( sort -n < input_day1.txt ) ; 
        for z in ( sort -n < input_day1.txt ) ;  
            if [ (math $x + $y + $z) -eq 2020 ] ; 
                echo (math "$x * $y * $z "); echo $x $y $z ; 
            end ; 
        end ; 
    end ; 
end 