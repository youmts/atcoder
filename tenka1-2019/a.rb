# https://atcoder.jp/contests/tenka1-2019-beginner/tasks/tenka1_2019_a

def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

a,b,c = cin

y = (a < c && c < b) || (b < c && c < a)
puts y ? 'Yes' : 'No'
