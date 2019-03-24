def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n,q = cin
s = gets.chop.chars
a = Array(s.length+1)
a[0] = 0
bf = nil
s.each_with_index do |c, i|
  a[i+1] = a[i] + ((bf=='A' && c=='C') ? 1 : 0)
  bf = c
end

q.times do
  l,r = cin
  p a[r] - a[l]
end
