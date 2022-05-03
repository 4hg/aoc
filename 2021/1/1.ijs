input   =: _999 ". [;. _2 freads 'input.txt'
solve   =: [:+/ ] < |.!.0
silver  =: 1 solve input
gold    =: 3 solve input
day1    =: silver , gold
