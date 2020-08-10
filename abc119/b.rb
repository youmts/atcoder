# https://atcoder.jp/contests/abc119/tasks/abc119_b

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

n, = cin
cout Array.new(n).map {
  x,u = gets.split
  x = x.to_f
  next x if u == "JPY"
  next x * 380000.0  
}.inject(:+)