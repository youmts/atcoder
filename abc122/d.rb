# https://atcoder.jp/contests/abc122/tasks/abc122_d

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n, = cin

# n=3の結果をすべてハッシュ化
hs = {}
"ACGT".each_char do |x1|
  "ACGT".each_char do |x2|
    "ACGT".each_char do |x3|
      hs[x1+x2+x3] = 1
    end
  end
end
hs.delete("AGC")
hs.delete("ACG")
hs.delete("GAC")

MO = 10**9+7
NG = "AGC"

# 後ろ3文字と新たにに加わる文字を総当たり
(n-3).times do
  # 次のハッシュ
  nhs = Hash.new(0)
  hs.keys.each do |k|
    "ACGT".each_char do |x|
      s = k + x
      next if s[1]+s[2]+s[3] == NG
      next if s[0]+s[1]+s[3] == NG
      next if s[0]+s[2]+s[3] == NG
      next if s[2]+s[1]+s[3] == NG
      next if s[1]+s[3]+s[2] == NG
      # 後ろ3文字で新しいハッシュの値を計算
      nhs[s.slice(1,3)] = (nhs[s.slice(1,3)] + hs[k]) % MO
    end
  end
  hs = nhs
end

p hs.values.inject {|s,x| (s+x)%MO}