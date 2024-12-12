module aoc;

import std.algorithm;
import std.array;
import std.conv;
import std.file;
import std.stdio;
import std.string;


struct Point {
    int x;
    int y;

    Point opBinary(string op : "+")(Point rhs) const {
        return Point(this.x + rhs.x, this.y + rhs.y);
    }

    uint cantor() const {
        if (x < 0 || y < 0) {
            return 0;
        }
        return (x + y) * (x + y + 1) / 2 + y;
    }

    static Point cantorPair(uint z) {
        import std.math : sqrt;
        import std.math.rounding : floor;

        int w = (((8.0 * z + 1).sqrt - 1) / 2).floor.to!int;
        int t = (w * w + w) / 2;
        int _y = z - t;
        int _x = w - _y;
        return Point(_x, _y);
    }

    bool isWithin(size_t n, size_t m) const {
        return 0 <= x && x < m && 0 <= y && y < n;
    }

    string toString() const {
        import std.format : format;
        return format("Point(%d, %d)", x, y);
    }
}

int[int] simulate(const Point start, const string[][] grid) {
    size_t m = grid.length;
    Point cell = start;
    int[int] visited;
    int dir = 0;
    Point[4] directions = [Point(0, -1), Point(1, 0), Point(0, 1), Point(-1, 0)];

    visited[cell.cantor()] = 0;
    for (int iteration = 0; iteration < 10_000; iteration++) {
        Point peek = cell + directions[dir];

        if (!peek.isWithin(m, m)) {
            return visited;
        } else if (grid[peek.y][peek.x] == "#") {
            dir = (dir + 1) % 4;
        } else {
            cell = peek;
            visited.require(cell.cantor(), 0);
        }
    }

    // the cantor pairing function is for non-negatives, -1 indicates a loop
    visited[-1] = 0;
    return visited;
}

long silver(const Point start, const string[][] grid) {
    return simulate(start, grid).length;
}

int gold(const Point start, const string[][] grid) {
    string[][] ngrid = grid.map!dup.array;
    auto visited = simulate(start, grid);
    int count = 0;

    foreach (z; visited.keys) {
        Point testCell = Point.cantorPair(z);
        ngrid[testCell.y][testCell.x] = "#";
        int* loop = -1 in simulate(start, ngrid);
        if (loop !is null) {
            count++;
        }
        ngrid[testCell.y][testCell.x] = ".";
    }
    return count;
}

void main() {
    auto lines = readText("input.txt").splitLines();
    string[][] grid = lines.map!(line => line.map!(to!string).array).array;
    Point start;

    foreach (r, ref row; grid) {
        foreach (c, ref cell; row) {
            if (cell == "^") {
                start = Point(c.to!int, r.to!int);
            }
        }
    }

    writeln(silver(start, grid), " ", gold(start, grid));
}
