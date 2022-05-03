i = IO.readlines("input.txt").map &:to_i
# part a,b
[2,3].each do |n|
	p i.combination(n).find{ _1.sum == 2020 }.inject :*
end
