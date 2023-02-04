input = File.new("input.txt")
SPACE = "   "
@crates = (1..8).map{ input.gets.chars.each_slice(4).map{ _1[...-1]*"" } }.transpose
2.times{ input.gets }
instructions = input.readlines(chomp: true).map{ _1.scan(/\d+/).map &:to_i }

def silver(f, t)
  i = 0
  crate = @crates[f - 1].find.with_index{ _1 != SPACE && i = _2 }
                        .tap{ @crates[f - 1][i] = SPACE }
  @crates[t - 1].rindex(SPACE).then{
    @crates[t - 1][_1] = crate if _1
    @crates[t - 1].prepend crate if !_1
  }
end

instructions.each{ |c, f, t| c.times{ silver f, t } }
puts @crates.map{ |s| s.find{ _1 != SPACE }.gsub /\[|\]/, "" }*""
