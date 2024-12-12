'E U' =. cutpara freads 'input.txt'
E =. ('| ' ".@rplc~ -.&CRLF)&> cut E
'M A' =. |: ((t -: i.@#) , [ {~ [: ({~ <.@-:@#)@/: t =. [: +/ (E e.~ ,/)"0/~)@".&> cut U
S =. +/ A * M
G =. +/ A * -. M
echo S , G
exit 0
