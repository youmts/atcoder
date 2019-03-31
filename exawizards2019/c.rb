# https://atcoder.jp/contests/exawizards2019/tasks/exawizards2019_c

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n, q = cin

ss = gets.chop.chars
ss.unshift("0")
ss.push("0")
ssi = [*(0..(ss.length-1))]

# 呪文を読み込む
qs = []
q.times do
  t,d = gets.split
  qs << [t,d]
end

# i番目が全ての呪文のあとにeに移動するか？
def move?(ss, qs, i, e)
  qs.each do |q|
    i += (q[1] == "L") ? -1 : 1 if q[0] == ss[i]
    return true if i == e
  end
  false 
end

# 二分探索して左に消滅する最大のi番目と右に消滅する最小のi番目を計算
l = ssi.bsearch_index{|i|!move?(ss, qs, i, 0)} - 1
r = ssi.bsearch_index{|i|move?(ss, qs, i, ss.length-1)}

puts [r-l-1,0].max