class UnionFind
  # @par[i] = i ならば根
  # @par[i] != i ならば @par[i] に親を指定
  def initialize(n)
    @par = [*(0..(n-1))]
    @size = Array.new(n, 1)
  end

  def root(x)
    return x if @par[x] == x # 根
    @par[x] = root(@par[x]); # 経路圧縮
  end

  def all_root
    [*(0..(@par.length-1))].map {|x| root(x)}
  end

  def same(x,y)
    return root(x) == root(y);
  end

  def size(x)
    @size[root(x)]
  end

  def unite(x, y)
    x = root(x)
    y = root(y)
    return if x == y
    @par[x] = y;
    @size[y] += @size[x]
  end
end
