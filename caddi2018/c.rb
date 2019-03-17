def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

require 'prime'

n, p = cin
pds = Prime.prime_division(p)
x = 1
pds.each do |pd|
  x *= pd[0] ** (pd[1] / n) if pd[1] >= n
end

puts x