USING: aoc io.files io.encodings.utf8 splitting
       math.parser sequences sorting arrays ;
IN: aoc.2022.01

: parse-input ( -- seq )
    base-aoc "2022/1/input.txt" append utf8 file-lines
    [ empty? ] split-when [ [ dec> ] map sum ] map ;

: silver ( -- n ) parse-input natural-sort last ;

: gold ( -- n ) parse-input natural-sort reverse 3 head sum ;

: one ( -- seq ) silver gold 2array ;
