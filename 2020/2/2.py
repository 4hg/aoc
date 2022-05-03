import re
pws = open("input.txt").read().split("\n")
a = b = 0
for i in pws:
    # part a
    s, e, l, p = re.split(r"\W+", i)
    x = p.count(l)
    if int(s) <= x <= int(e): a+=1
    # part b
    y = p[int(s)-1] == l
    z = p[int(e)-1] == l
    if y ^ z: b += 1
print(a, b)
