def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n, q = cin
s = "0" + gets.chop + "0"
puts
p s
ss = s.chars
gs = Array.new(ss.length, 1)
gs[0] = 0
gs[ss.length-1] = 0

def pgs(gs)
  p gs.join
end
pgs(gs)
q.times do
  t, d = gets.split
  p "#{t}, #{d}"
  ngs = gs.clone
  ss.each_with_index do |x, i|
    next if x != t
    if d == 'L' then
      ngs[i-1] += gs[i]
      ngs[i] -= gs[i]
      next
    end 
    if d == 'R' then
      ngs[i+1] += gs[i]
      ngs[i] -= gs[i]
      next
    end
  end
  gs = ngs
  pgs(gs)
end
    
gs.shift
gs.pop
puts gs.inject(:+)