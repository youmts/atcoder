def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

n = gets.to_i
h = Hash.new(0)
gets.chop.chars.each {|c| h[c] += 1}
(n-1).times do
  a = Hash.new(0)
  gets.chop.chars.each {|c| a[c] += 1}
  h.keys.each {|k| h[k] = [h[k], a[k]].min}
end

puts h.to_a.sort{|a,b|a[0]<=>b[0]}
        .inject("") {|str, kv| str += kv[0]*kv[1]}