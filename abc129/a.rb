# https://atcoder.jp/contests/abc129/tasks/abc129_a

def cin; gets.split.map(&:to_i) end

# exit if $0 != __FILE__

# n, *x = cin
# s = gets.chomp

# puts n

p,q,r = cin
puts [p+q,q+r,r+p].min