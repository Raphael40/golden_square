class Todo
  def initialize(task)
    @task = task
    @marked_done = false
  end

  def task
    fail "Please enter valid todo." if @task.empty?
    return @task
  end

  def mark_done!
    @marked_done = true
  end

  def done?
    return @marked_done
  end
end