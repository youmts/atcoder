require 'test/unit'
require './src/union_find.rb'

class UnionFindTest < Test::Unit::TestCase
  def test_init
    t = UnionFind.new(3)
    assert_equal [0,1,2], t.all_root
  end

  def test_unite
    t = UnionFind.new(3)
    t.unite(1,2)
    assert_true t.same(1,2)
    assert_false t.same(0,1)
    assert_equal 1, t.size(0)
    assert_equal 2, t.size(1)
    assert_equal 2, t.size(2)
  end

  def test_unite_2lv
    t = UnionFind.new(3)
    t.unite(1,2)
    t.unite(1,0)
    assert_true t.same(0,1)
    assert_true t.same(1,2)
    assert_equal 3, t.size(0)
    assert_equal 3, t.size(1)
    assert_equal 3, t.size(2)
  end
end