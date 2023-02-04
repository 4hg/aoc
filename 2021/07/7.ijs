in =: sort ".;._1 ',' , fread 'input.txt'
med =. {~ %&2 @: #
mean =. [:<.+/%#
assum =. +/ @: i. @: >:
s =. [: +/ | @ (- med)
g =. +/ assum"1 ,. | @ (- mean) in
echo g ,~ s in
exit 0
