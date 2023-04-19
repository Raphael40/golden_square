class Todo
  def initialize(task)
    @task = task
    @marked_done = []
  end

  def task
    fail "Please enter valid todo." if @task.empty?
    return @task
  end

  def mark_done!
    @marked_done << @task
  end

  def done?
    if @marked_done.include? @task
      true
    else
      false
    end
  end
end