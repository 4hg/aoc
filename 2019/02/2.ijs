in =. 12 2 (1 2) } ".&> ',' cut fread 'input.txt'
index =: [ {~ [ {~ ]
ops =: {{
    'ip in' =. y
    'store val' =. (in {~ 3 + ip) ; (in index >: ip) u in index 2 + ip
    (4 + ip) ; val store } in
}}
exec =: (+ ops)`(* ops)`{{ exit echo {. 1 {:: y }}`{{ exit echo 'oh no' }}@.(1 2 99 i. 0&{:: { 1&{::)
exec^:a: 0 ; in