# https://atcoder.jp/contests/exawizards2019/tasks/exawizards2019_a

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

a,b,c = cin
if a == b && b == c then
  puts 'Yes'
  exit
end

puts 'No'
