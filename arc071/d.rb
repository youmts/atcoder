# https://atcoder.jp/contests/arc071/tasks/arc071_d

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

M = 10**9+7
n, m = cin
xs = cin
ys = cin

xx = [*(1..n)].inject(0) {
  |s, i| (s + (((2*i)%M-n-1) * xs[i-1])%M)%M}
yy = [*(1..m)].inject(0) {
  |s, i| (s + (((2*i)%M-m-1) * ys[i-1])%M)%M}

puts (xx * yy)%M