class MyStack
  def initialize
    @store = []
  end

  def peek
    @store.last  
  end

  def size 
    @store.size 
  end

  def empty?
    @store.empty?
  end

  def pop
    @store.pop 
  end

  def push(ele) 
    @store << ele
  end

end