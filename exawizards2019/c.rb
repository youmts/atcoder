def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n, q = cin

ss = gets.chop.chars
ss.unshift("0")
ss.push("0")
ssi = [*(0..(ss.length-1))]

qs = []
q.times do
  t,d = gets.split
  qs << [t,d]
end

def exists?(ss, qs, i, e)
  qs.each do |q|
    i += (q[1] == "L") ? -1 : 1 if q[0] == ss[i]
    return false if i == e
  end
  true
end
    
l = ssi.bsearch_index{|i|exists?(ss, qs, i, 0)} - 1
r = ssi.bsearch_index{|i|!exists?(ss, qs, i, ss.length-1)}

puts [r-l-1,0].max