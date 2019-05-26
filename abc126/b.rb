# https://atcoder.jp/contests/abc126/tasks/abc126_b

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

s = gets.chop

a = s[0..1].to_i
b = s[2..3].to_i

am = (a >= 1 && a <= 12)
bm = (b >= 1 && b <= 12)

if am && bm then
  puts 'AMBIGUOUS'
elsif am then
  puts 'MMYY'
elsif bm then
  puts 'YYMM'
else
  puts 'NA'
end
