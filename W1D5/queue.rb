class Queue

  def initialize
    @arr = []
  end

  def enqueue(el)
    @arr.push(el)
  end

  def dequeue
    @arr.shift
  end

  def peek
    @arr.first
  end

end
