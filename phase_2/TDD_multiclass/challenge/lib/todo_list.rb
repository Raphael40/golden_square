class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo)
    @todo_list << todo
  end

  def incomplete
    @todo_list
  end

  def complete
    # @incomplete_list.each do |task|
    #   if task.done?
    #     @completed_list << task
    #   end
    # end
    @todo_list.filter { |task| task.done? }
  end

  def give_up!
    @todo_list.each { |task| task.mark_done! }
  end
end