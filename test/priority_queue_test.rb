require 'test/unit'
require './src/priority_queue.rb'

class PriorityQueueTest < Test::Unit::TestCase
  def test_simple
    q = PriorityQueue.new
    q.push(0)
    q.push(1)
    assert_equal 1, q.pop
    assert_equal 0, q.pop
    assert_equal nil, q.pop
  end

  def test_block_compare
    q = PriorityQueue.new {|a, b| a[1] <=> b[1]}
    q.push([1000, 0])
    q.push([100, 1])
    assert_equal [100, 1], q.pop
    assert_equal [1000, 0], q.pop
  end

  def test_push_return_self
    q = PriorityQueue.new
    assert_equal q, q.push(0)
  end

  def test_empty_pop_return_nil
    q = PriorityQueue.new
    assert_nil q.pop
  end

  def test_all
    list = [*(0..6)]
    
    # 全ての抜き出せる数
    [*(1..(list.length))].each do |n|
      # 全てのn個の順列組み合わせ
      list.permutation(n).each do |l|
        # p l
        q = PriorityQueue.new
        l.each {|x| q.push(x)}
        # 優先順に取り出せるか？
        l.sort.reverse.each {|x| assert_equal x, q.pop}
      end
    end
  end

  def test_logn
    q = PriorityQueue.new
    (1..100000).each {|x| q.push(x)}
    100000.times {q.pop}
  end
end