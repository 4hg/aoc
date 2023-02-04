$X = 1
$c = 1
$s = 0
$CRT = [" "]*40*6
def cycle(ins, v)
  $s += [20, 60, 100, 140, 180, 220].find{ _1 == $c }&.*($X).to_i
  $CRT[~-$c] = ?█ if [~-$X, $X, -~$X].include?(~-$c % 40)
  $c += 1
  $X += v if ins == "addx_phase2"
  cycle("addx_phase2", v) if ins == "addx"
end

File.readlines("input.txt", chomp: true).each{ |ins|
  if ins == "noop"
    cycle(ins, 0)
  else
    i, v = ins.split
    cycle(i, v.to_i)
  end
}

puts $s, $CRT.each_slice(40).map(&:join)
