def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

a,b,c = cin
puts [a+b+1,c].min + b
