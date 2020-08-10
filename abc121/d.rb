# https://atcoder.jp/contests/abc121/tasks/abc121_d

include Math

class Main
  def self.main lines
    a,b = lines[0].split.map(&:to_i)
    
    return 0 if a == 0 && b == 0

    [*(0..(log2(b).floor))]
      .map {|k| self.y(a, b, k)}
      .reverse
      .join
      .to_i(2)
  end

  def self.y a, b, k
    s = 2**k
    c = 0
    
    an = self.pos(a, k)
    c -= an if a[k] == 1 # move to 0
    bn = self.pos(b, k)
    c += bn+1 if b[k] == 1 # move to 0

    c += ((b / (s * 2)) - (a / (s * 2))) * s

    c % 2
  end

  def self.pos x, k
    x % 2**k
  end
end

if $0 == __FILE__
  $stdout = open('/dev/null', 'w')
  r = Main.main STDIN.readlines
  $stdout = STDOUT
  puts r
end