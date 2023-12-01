@R = %w(\d one two three four five six seven eight nine)
@M = @R[1..].map.zip((?1..?9)).to_h

p File.readlines("input.txt").sum{
  ms = _1.scan(Regexp.new("(?=(#{@R*?|}))")).flatten
  a, b = ms.first, ms.last
  (@M.fetch(a, a) + @M.fetch(b, b)).to_i
}