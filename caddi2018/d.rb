# https://atcoder.jp/contests/caddi2018/tasks/caddi2018_d

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

n = gets.to_i
as = Array.new(n).map{gets.to_i}

puts as.all? {|x| x%2 == 0} ? "second" : "first"
