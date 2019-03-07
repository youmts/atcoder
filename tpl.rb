class Main
  def self.main lines
    p lines[1]
    lines[1]
      .split(" ")
      .map {|x| x.to_i}
      .sum
  end
end

if $0 == __FILE__
  $stdout = open('/dev/null', 'w')
  r = Main.main STDIN.readlines
  $stdout = STDOUT
  puts r
end