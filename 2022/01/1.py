sums = sorted(eval(open("input.txt").read().replace("\n\n", ",").replace("\n", "+")))
print(sums[-1], sum(sums[-3:]))
