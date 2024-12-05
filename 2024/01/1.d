module aoc;

import std.algorithm;
import std.conv;
import std.math.algebraic;
import std.range;
import std.stdio;

void main() {
    auto file = File("input.txt", "r");
    int[] left, right;
    
    foreach (line; file.byLine()) {
        char[][] vs = line.split("   ");
        left ~= vs[0].to!int;
        right ~= vs[1].to!int;
    }
    int s = reduce!(
        (a, b) => a + abs(b[0] - b[1])
    )(0, zip(sort(left), sort(right)));

    int g = 0;
    foreach (l; left) {
        int c = 0;
        foreach (r; right) {
            if (r == l) c++;
        }
        g += l * c;
    }

    writeln(s, " ", g);
}
