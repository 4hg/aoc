in =. 'red|green|blue' {. rxapply freads 'input.txt'
grabs =. {{ |: (".@}: ; {:)&> '\d+ \w+' rxall y }}

s =. grabs {{
  'counts colors' =. u. y
  b =. +./ counts > 12 + 3 | 3 u: colors
  0:^:b ". '\d+' rxfirst y
}}

g =. grabs {{
  'counts colors' =. u. y
  */ ('rgb' i. colors) >.//. counts
}}

echo +/ (s,.g);._2 in
exit 0