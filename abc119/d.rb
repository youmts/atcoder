# https://atcoder.jp/contests/abc119/tasks/abc119_d

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

INF = 10**18
a,b,qq = cin
s = Array.new(a) {gets.to_i}
s << -INF << INF
s.sort!
t = Array.new(b) {gets.to_i}
t << -INF << INF
t.sort!

#p s
#p t

qq.times do
  q = gets.to_i
  si = s.bsearch_index {|x| x >= q}
  ti = t.bsearch_index {|x| x >= q}

  r = INF
  [s[si-1], s[si]].each { |ss|
    [t[ti-1], t[ti]].each { |tt|
#      p "#{ss}, #{tt}"
      d1 = (ss - q).abs + (ss - tt).abs
      d2 = (tt - q).abs + (tt - ss).abs
      r = [r, d1, d2].min
    }
  }
  puts r
end

  