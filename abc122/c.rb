# https://atcoder.jp/contests/abc122/tasks/abc122_c

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n,q = cin
s = gets.chop.chars

# ACが完成した数の累積をあらかじめ配列にしておく
# index = 0はダミー
# ACACAC => [0,0,1,1,2,2,3,3]
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
