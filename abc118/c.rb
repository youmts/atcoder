def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n = gets.chop
a = cin

b = a.pop

def euc(a, b)
  a, b = b, a if a > b
  return b if a == 0
  euc(a, b%a)
end

a.each {|x| b = euc(b, x)}

puts b
