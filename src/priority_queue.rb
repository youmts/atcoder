class PriorityQueue
  def initialize(&compare)
    @heap = []
    if compare then
      @compare = compare
    else
      @compare = lambda {|a, b| a <=> b}
    end
  end

  def push(elem)
    push_heap(elem)
    self
  end

  def pop
    pop_heap
  end

  private
    def push_heap(elem)
      now = @heap.length
      @heap.push(elem);

      while now != 0
        parent = (now-1) / 2
        # 親と値を入れ替え
        if @compare.call(@heap[parent], @heap[now]) < 0 then
          @heap[parent], @heap[now] = @heap[now], @heap[parent]
        end
        now = parent
      end
    end

    def pop_heap
      ret = @heap[0]
      @heap[0] = @heap.pop
      length = @heap.length
      now = 0

      while (left_child = 2 * now + 1) < length
        # 値の大きい子を選ぶ
        is_right_prior = 
          (left_child != length - 1 && 
            @compare.call(@heap[left_child+1], @heap[left_child]) > 0)
        swap = is_right_prior ? left_child+1 : left_child
        # 子と値を入れ替え
        if @compare.call(@heap[now], @heap[swap]) < 0 then
          @heap[now], @heap[swap] = @heap[swap], @heap[now]
        end
        now = swap
      end
      ret
    end
end