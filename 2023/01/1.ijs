in =. freads 'input.txt'
weld =. 0&{:: ".@, _1&{::

echo +/ ('\d' weld@rxall ]);._2 in

ns =. ;: 'one two three four five six seven eight nine'
regex =. '(?=(\d|' , '))' ,~ '|' joinstring ns 
lookup =. ns&{{ (y[])^:(-:&'10') ": >: x i. <y }}
part2 =. [: lookup&.> a: -.~ ~.@rxmatches ,@rxfrom ]

echo +/ (regex weld@part2]);._2 in