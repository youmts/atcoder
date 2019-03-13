def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

INF=10**18
l,n = cin
xxs = Array.new(n) {gets.to_i}
xs = [-INF] + xxs.map{|x|x-l} + xxs + xxs.map{|x|x+l} + [INF]

p xs

pos = 0
len = 0
size = n
n.times do
  i = xs.bsearch_index{|x| x >= pos}
  ii=0
  if pos-xs[i-1] > xs[i]-pos then
    len+=pos-xs[i-1]
    pos=xs[i-1]
    p "- #{i}-1/#{size}"
    ii =
      i-1>=1+size*2 ? i-1-size*2 : 
      i-1>=1+size ? i-1-size :
      i-1
  else
    len+=xs[i]-pos
    pos=xs[i]
    p "+ #{i}/#{size}"
    ii = 
      i>=1+size*2 ? i-size*2 : 
      i>=1+size ? i-size : 
      i
  end

  p "#{ii}/#{size}"
  xs.delete_at(ii+size*2)
  xs.delete_at(ii+size)
  xs.delete_at(ii)

  size-=1
  pos -= (pos/l)*l
  p "#{pos} / #{xs}"
end

puts len