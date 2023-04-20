class Todo
  def initialize
    @todo = []
    @completed_todo = false
  end

  def add(todo)
    @todo << todo
  end

  def marked_complete
    @completed_todo = true
  end

  def done?
    return @completed_todo
  end

  def list
    @todo
  end
end