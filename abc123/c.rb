# https://atcoder.jp/contests/abc123/tasks/abc123_c

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n = gets.to_i
a = Array.new(5) {gets.to_i}
m = a.min
puts (n+m-1)/m+4