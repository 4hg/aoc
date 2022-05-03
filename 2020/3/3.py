from math import prod

lines = open("input.txt").read().split("\n")

def go(inp, x, y=1):
    res = 0
    for i in range(0, len(lines), y):
        res += inp[i][i*x % 31 if y == 1 else i//2 % 31] == '#'
    return res

# part a
print(go(lines, 3))

# part b
print(prod([go(lines, x, y) for x,y in [(1,1),(3,1),(5,1),(7,1),(1,2)]]))
