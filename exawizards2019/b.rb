def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n = cin
s = gets.chars
r = s.select{|x|x=='R'}.length
b = s.select{|x|x=='B'}.length

puts r>b ? 'Yes' : 'No'
