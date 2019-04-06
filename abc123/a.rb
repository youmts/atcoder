# https://atcoder.jp/contests/abc123/tasks/abc123_a

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
k = gets.to_i
if e-a <= k then
  puts 'Yay!'
  exit
end
puts ':('
