class TodoList
  def initialize
    @incomplete_list = []
    @completed_list = []
  end

  def add(todo)
    @incomplete_list << todo
  end

  def incomplete
   @incomplete_list
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end