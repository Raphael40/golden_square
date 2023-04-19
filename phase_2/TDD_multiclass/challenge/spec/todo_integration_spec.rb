require 'todo'
require 'todo_list'

RSpec.describe TodoList do
  context 'calls from Todo' do 
    xit 'adds a todo to the todo list' do
      todo_list = TodoList.new
      todo = Todo.new('finish multitask classes')
      result = todo_list.add(todo)

      expect(result.incomplete).to eq 'finish multitask classes'
    end
  end
end