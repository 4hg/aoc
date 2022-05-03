def go(i):
    return int(i.translate(str.maketrans("FBLR", "0101")), 2)


*i, = map(go, open("input.txt").read().split("\n"))

# part a
print(max(i))

# part b
print(sum(range(min(i),max(i)+1)) - sum(i))
