inp = open("input.txt").read().split("\n\n")
s = s2 = 0
for i in inp:
    p = i.split("\n")
    q = [*"".join(p)]
    s += len(set(q))
    s2 += sum(1 if q.count(x) == len(p) else 0 for x in set(q))

# part a, b
print(s, s2)
