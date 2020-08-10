# https://atcoder.jp/contests/abc129/tasks/abc129_d

def cin; gets.split.map(&:to_i) end

# exit if $0 != __FILE__

# n, *x = cin
# s = gets.chomp

# puts n
h,w = cin

map = Array.new(h) {gets.chop.chars}

yoko = []
h.times do |y|
  s = -1
  a = []
  w.times do |x|
    c = map[y][x]
    if c == "."
      s = x if s < 0
    else #
      if s >= 0
        a << [s, x-s]
        s = -1
      end
    end
  end
  if s >= 0
    a << [s, w-s]
  end
  yoko << a
end

def pa(a)
  a.each do |x|
    p x
  end
end

pa yoko


