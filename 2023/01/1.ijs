echo +/ (0 ". 0 _1 { -.&alpha);._2 in =. freads 'input.txt'

ns =. cut '1 2 3 4 5 6 7 8 9 one two three four five six seven eight nine'
matches =. a: -.~ ('(?=(' , '))' ,~ '|' joinstring ns)&(~.@rxmatches ,@rxfrom ])

echo +/ (10 #. 1 + 9 | 0 _1 { ns i. matches);._2 in
exit 0