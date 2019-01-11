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

# Exercise 3 - Map
class Map

  def initialize
    @map = []
  end

  def set(key, value)
    @map.each_with_index do |ele, idx|
      if ele[0] == key
        ele[1] = value
        return @map
      end
    end

    @map << [key, value]
  end

  def get(key)
    @map.each_with_index do |ele, idx|
      if @map[idx][0] == key
        return @map[idx][1]
      end
    end
  end

  def delete(key)
    @map.each_with_index do |ele, idx|
      if @map[idx][0] == key
        @map.delete(@map[idx])
      end
    end
  end

  def show
    @map
  end
end