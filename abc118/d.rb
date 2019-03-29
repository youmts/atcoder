def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n, m = cin
as = cin.sort.reverse

ha = {
  1=>2,
  2=>5,
  3=>5,
  4=>4,
  5=>5,
  6=>6,
  7=>3,
  8=>7,
  9=>6,
}

L = -10**18
dp = Array.new(n+1)
dp[0] = 0
[*(1..n)].each do |x|
  dp[x] = as.map{|a|
    next L if x-ha[a] < 0
    dp[x-ha[a]] + 1
  }.max
end

nn = n
while nn > 0
  as.each do |a|
    if dp[nn] == dp[nn-ha[a]] + 1 then
      print a
      nn = nn-ha[a]
      break
    end
  end
end
puts