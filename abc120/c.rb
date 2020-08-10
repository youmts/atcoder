# https://atcoder.jp/contests/abc120/tasks/abc120_c

class Main
  def self.main lines
    s = lines[0].split("")
    st = []
    c = 0
    while s.length > 0
      if st.length == 0 then
        st.push s.pop
      else
        x = s.last + st.last
        if x == "01" || x == "10" then
          s.pop
          st.pop
          c += 2
        else
          st.push s.pop
        end
      end
    end
    c
  end
end

if $0 == __FILE__
#  $stdout = open('/dev/null', 'w')
  r = Main.main STDIN.readlines
#  $stdout = STDOUT
  puts r
end