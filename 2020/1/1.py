from math import prod
from itertools import combinations
*i, = map(int, open("input.txt").readlines())
# part a,b
for n in [2,3]:
	ans = filter(lambda nums: sum(nums) == 2020, combinations(i, n))
	print(prod(*ans))
