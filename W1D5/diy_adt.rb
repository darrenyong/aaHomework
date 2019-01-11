# Exercise 1 - Stack
class Stack

  def initialize
    @stack = Array.new
  end

  def push(ele)
    @stack << ele if !@stack.include?(ele)
  end

  def pop
    @stack.pop(ele)
  end

  def peek
    @stack.last
  end
end


# Exercise 2 - Queue
class Queue

  def initialize
    @queue = Array.new 
  end

  def enqueue(el)
    @queue.unshift(el)
  end
    
  def dequeue
    @queue.pop
  end
    
  def peek
    @queue.first
  end
end
