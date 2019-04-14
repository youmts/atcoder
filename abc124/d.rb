# https://atcoder.jp/contests/abc124/tasks/abc124_d
# WA 

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n, k = cin
s = gets.chop

b = nil
ls = []
s.chars.each do |x|
  if x == b then
    ls[ls.length-1] += 1
  else
    ls << 1
    b = x
  end
end

m = 0
c = "1"
c = "0" if s[0] == "0"
kc = "1"
kc = "0" if k % 2 == 1
p kc
buf = []
now = 0
ls.each do |x|
  p buf,c,now
  buf << x
  y = nil
  y = buf.shift if buf.length > k * 2 + 1
  now += x
  now -= y if y
  m = now if now > m && buf[k] == kc 
  if c == "0" then
    c = "1"
  else
    c = "0"
  end
end

puts m