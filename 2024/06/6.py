def simulate(start, grid):
    xbounds, ybounds = range(len(grid[0])), range(len(grid))
    dir_idx = 0
    dirs = [(-1, 0), (0, 1), (1, 0), (0, -1)]
    coord = start
    visited = {start}
    iteration = 0

    while iteration < 10000:
        dy, dx = dirs[dir_idx]
        y, x = coord
        if (x + dx) not in xbounds or (y + dy) not in ybounds:
            return False, visited
        peek = grid[y + dy][x + dx]
        if peek == "#":
            dir_idx = (dir_idx + 1) % 4
        else:
            coord = (y + dy, x + dx)
            visited.add(coord)
        iteration += 1
    return True, visited

def silver(start, grid):
    _, visited = simulate(start, grid)
    return len(visited)

def gold(start, grid):
    _, visited = simulate(start, grid)
    ans = 0

    for coord in visited:
        r, c = coord
        grid[r][c] = "#"
        loop, _ = simulate(start, grid)
        ans += loop
        grid[r][c] = "."
    return ans

with open("input.txt") as fp:
    data = fp.read().strip()

grid = [[*row] for row in data.split("\n")]
start = divmod(data.find("^"), len(grid[0]) + 1)

print(silver(start, grid), gold(start, grid))
