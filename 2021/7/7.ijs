input   =: sort ". [;._1 ',' , 1!:1 < 'input.txt'
median  =: {~ %&2 @: #
mean    =: [:<.+/%#
assum   =: +/ @: i. @: >:
silver  =: [: +/ | @ (- median)
gold    =: +/ assum"1 ,. | @ (- mean) input
day7    =: gold ,~ silver input
