I =. fread 'input.txt'
F =: 3 ".@}. rplc&',*'
S =. +/ F&> 'mul\(\d+,\d+\)' rxall I
G =. {{
  ops =. 'do\(\)|don''t\(\)|mul\(\d+,\d+\)' rxall y
  r =. 0
  dw =. 1
  for_o. ops do.
    if. o = <'don''t()' do. dw =. 0
    elseif. o = <'do()' do. dw =. 1
    elseif. dw do. r =. r + F > o end.
  end.
  r
}} I
echo S, G
exit 0
