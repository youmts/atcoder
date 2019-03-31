def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n, q = cin
s = gets.chop

rs = []
ls = []
q.times do
  t,d=gets.split
  rs << t if d == "R"
  ls << t if d == "L"
end

def ff(ss, qq)
  #p "ff"
  #p ss
  #p qq
  cnt = 0
  i = 0
  ss.each do |c|
    while i < qq.length
      if qq[i] == c then
        cnt += 1
        i += 1
        break
      end
      i += 1
    end
  end
  cnt
end

rr = ff(s.chars.reverse, rs.reverse)
ll = ff(s.chars, ls.reverse)
puts s.length - [rr+ll,s.length].min
  
