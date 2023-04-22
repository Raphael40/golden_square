require 'task_formatter'

RSpec.describe 'reformats a task' do
  it 'returns an incomplete task as a string with empty box' do
    task = double :task, title: 'crazy task', complete?: false
    task_formatter = TaskFormatter.new(task)

    expect(task_formatter.format).to eq '- [ ] crazy task'
  end

  it 'returns a complete task as a string with an X in box' do
    task = double :task, title: 'crazy task', complete?: true
    task_formatter = TaskFormatter.new(task)

    expect(task_formatter.format).to eq '- [x] crazy task'
  end
end