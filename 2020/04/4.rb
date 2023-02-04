i = IO.readlines("input.txt", "\n\n").map{ _1.scan(/(\S+):(\S+)/).to_h }

def year(s, e, v) = v =~ /^\d{4}$/ && (s..e) === v.to_i
def height v
  case v.match(/^(\d+)(cm|in)$/)&.captures
  in [d, "cm"]
    (150..193) === d.to_i
  in [d, "in"]
    (59..76) === d.to_i
  else
    false
  end
end

def present?(d) = (%w(byr iyr eyr hgt hcl ecl pid) - d.keys).size.zero?
def valid? d
  present?(d) && d.all? do |k, v|
    case k
    when "byr"
      year(1920, 2002, v)
    when "iyr"
      year(2010, 2020, v)
    when "eyr"
      year(2020, 2030, v)
    when "hgt"
      height(v)
    when "hcl"
      v =~ /^#[\da-f]{6}$/
    when "ecl"
      %w(amb blu brn gry grn hzl oth).include? v
    when "pid"
      v =~ /^\d{9}$/
    else
      true
    end
  end
end

# part a
p i.count{ present? _1 }

# part b  
p i.count{ valid? _1 }
