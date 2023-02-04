silver = gold = 0
for line in open("input.txt").readlines():
    a, b, c, d = map(int, line.replace("-", ",").split(","))
    cover = lambda w, x, y, z: w <= y and x >= z
    silver += cover(a, b, c, d) or cover(c, d, a, b)
    gold += max(a, c) <= min(b, d)

print(silver, gold)