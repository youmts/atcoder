# https://atcoder.jp/contests/tenka1-2019-beginner/tasks/tenka1_2019_b

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n = gets.to_i
s = gets.chop
k = gets.to_i

kc = s[k-1]
puts s.gsub(/[^#{kc}]/, '*')