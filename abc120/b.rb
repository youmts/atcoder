class Main
  def self.main lines
    a,b,k = lines[0].split.map(&:to_i)
    c=0    
    [a,b].min.downto(1) do |x|
      if a % x == 0 && b % x == 0 then
        c += 1
        if c == k then
          return x
        end
      end
    end
  end
end

if $0 == __FILE__
  $stdout = open('/dev/null', 'w')
  r = Main.main STDIN.readlines
  $stdout = STDOUT
  puts r
end