class Map
  def initialize
    @arr = []
  end

  def set(key, value)
    delete(key)
    @arr << [key, value]
  end

  def get(key)
    @arr.each { |pair| return pair.last if pair.first == key }
    nil
  end

  def delete(key)
    @arr.each { |pair| @arr.delete(pair) if pair.first == key }
  end

  def show
    @arr
  end
end
