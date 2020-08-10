# https://atcoder.jp/contests/agc030/tasks/agc030_c

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

k = gets.to_i

if k == 1 then
  p 1
  p 1
  exit
end

n = ((k+3)/4)*2

cc = {}
if k%4 != 0 then
  (4-k%4).times do |i|
    cc[n*2-i-1] = n-i-1
  end
end

puts n

n.times do |r|
  puts [*(0..(n-1))].map { |c|
    next (r+c)%n if r%2 == 0
    c = n+((r+c)%n)
    next cc[c] if cc.key?(c)
    next c
  }.map{|x|x+1}.join(" ")
end
