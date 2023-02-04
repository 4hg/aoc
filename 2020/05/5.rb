i = File.open("input.txt").map{ _1.tr('FBLR', '0101').to_i 2 }

p i.max
p Range.new(*i.minmax).sum - i.sum
