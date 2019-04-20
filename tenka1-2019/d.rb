# https://atcoder.jp/contests/tenka1-2019-beginner/tasks/tenka1_2019_d
# WA

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n = gets.to_i
as = Array.new(n) {gets.to_i}
hash = {}
as.each {|a| hash.has_key?(a) ? hash[a] += 1 : hash[a] = 1 }
p hash
M = 998244353
s = as.inject(:+)
h = s / 2

# hより大きくなるasの組み合わせの数を求めたい・・・
dp = []
dp[0] = 1 # s
[*(1..(s-h))].each do |i|
  dp[i] = 0
  [*(0..(i-1))].each do |j|
    x = i-j
    dp[i] += dp[j] * (hash.has_key?(x) ? hash[x] : 0)
  end
end

p dp
ss = dp.inject(:+)
puts 3**n - ss*6