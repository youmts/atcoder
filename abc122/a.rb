def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n = gets.chop
puts 'A' if n == 'T'
puts 'T' if n == 'A'
puts 'G' if n == 'C'
puts 'C' if n == 'G'
