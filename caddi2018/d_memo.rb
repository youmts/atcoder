def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

n = gets.to_i
as = Array.new(n).map{gets.to_i}

$memo = {}

# 再帰関数
# @param [Array] bs りんごの数の配列
# @param [boolean] ru 今が「あなた」の番かどうか
def rc(bs, ru)
  return false if bs.inject(:+) == 0 # すべて0は負け
  return $memo[bs] if $memo.has_key?(bs)

  # りんごの残っている色のindexを配列化
  is = bs.map.with_index{|x,i| x>0 ? i : nil}.compact
  # すべてのindexの1つ以上の選び方の組み合わせを列挙
  [*(1..(is.length))].each do |i|
    is.combination(i) do |ar|
      # 選ばれたindexのりんごを一つ減らした配列
      c = Array.new(bs).map.with_index{
        |x,j| ar.include?(j) ? x-1: x }
      # 再帰して次のプレイヤーが負けを見つけたら勝ち
      if !rc(c, !ru) then
        return $memo[bs] = true
      end
    end
  end
  # 負け
  return $memo[bs] = false
end

p rc(as, true) ? "first" : "second"
$memo.keys.sort.each do |k|
  puts "#{k}=>#{$memo[k]}"
end