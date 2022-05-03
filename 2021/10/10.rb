@scores = {): 3, ]: 57, }: 1197, >: 25137}
i = open("input.txt").read.split("\n")

def balance_check(s, t) = ['()', '[]', '{}', '<>'].include?(s.last + t)

def correct? l
  stack = []

  l.chars.each do |c|
    if ['(', '[', '{', '<'].include?(c)
      stack.push c
    elsif balance_check(stack, c)
      stack.pop
    elsif !balance_check(stack, c)
      return false
    end
  end

  true
end

def silver i
  score = 0
  i.each do |l|
    stack = []
    l.each_char do |c|
      if ['(', '[', '{', '<'].include?(c)
        stack.push c
      elsif balance_check(stack, c)
        stack.pop
      elsif !balance_check(stack, c)
        score += @scores[c.to_sym]
        break
      end
    end
  end

  score
end

def gold i
  score = 0
  i.each do |l|
    stack = []
  end
  1
end

p silver i.filter{ !correct?(_1) }
p gold   i.filter{  correct?(_1) }
