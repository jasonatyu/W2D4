require_relative 'my_stack'

class StackQueue

  def initialize 
    @store = MyStack.new
  end

  def size 
    @store.size
  end

  def empty?
    @store.empty?
  end

  def enqueue(ele)
    temp=MyStack.new
    @store.size.times do |i| 
      temp.push(@store.pop) 
    end  
    temp.size.times do |i| 
      @store.push(temp.pop) 
    end 
  end

  def dequeue
    temp=MyStack.new
    @store.size.times do |i| 
      temp.push(@store.pop) 
    end  
    temp.pop
    temp.size.times do |i| 
      @store.push(temp.pop) 
    end 
  end
end

