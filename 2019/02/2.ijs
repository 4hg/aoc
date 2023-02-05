in =. ".&> ',' cut fread 'input.txt'
set =. (1 2) }
index =: [ {~ [ {~ ]
ops =. {{
    'ip in' =. y
    'store val' =. (in {~ 3 + ip) ; (in index >: ip) u in index 2 + ip
    (4 + ip) ; val store } in
}}
check =. 0:`(0&{:: { 1&{::)@.(0&{:: < 1 #@{:: ])
tick =. (+ ops)`(* ops)`(1 ({. ; ])@{:: ])`]@.(1 2 99 i. check)
run =. 0 {:: tick^:_
echo (1202&{ , 19690720 I.@:= ]) (0 run@; in set~ ])&> , { ;~ i. 100
exit 0
