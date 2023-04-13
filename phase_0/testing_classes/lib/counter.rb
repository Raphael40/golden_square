class Counter
  def initialize
    @count = 0
  end

  def add(num)
    @count += num
  end

  def report 
    return "Counter to #{@count} so far."
  end
end