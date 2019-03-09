def lsp
  STDIN.readline.split.map(&:to_i)
end

exit if $0 != __FILE__

p lsp
