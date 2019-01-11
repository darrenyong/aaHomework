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
