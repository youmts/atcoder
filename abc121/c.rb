# https://atcoder.jp/contests/abc121/tasks/abc121_c

class Main
  def self.main lines
    n,m = lines.shift.split.map(&:to_i)
    ab = Array.new(n) {lines.shift.split.map(&:to_i)}
    ab.sort! {|x,y| x[0] <=> y[0]}
#    p ab
    r = 0
    while m > 0
      s = ab.shift
      x = [m, s[1]].min
      m -= x
      r += x * s[0]
    end
    r
  end
end

if $0 == __FILE__
  $stdout = open('/dev/null', 'w')
  r = Main.main STDIN.readlines
  $stdout = STDOUT
  puts r
end