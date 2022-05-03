input   =: [;. _2 freads 'input.txt'
forward =: + ,&0
down    =: + 0&,
up      =: - 0&,
silver  =: */@:(+/)@:([:".'0 0 '&,"1)
day2    =: (silver input) , 0
