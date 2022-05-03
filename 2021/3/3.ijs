input   =: ". ,.;. _2 freads 'input.txt'
epsilon =: (+/@:=&0 < +/)
silver  =: (#.@:epsilon) * (#.@:-.@:epsilon)
day3	=: (silver input) , 0