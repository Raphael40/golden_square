require 'todo'
require 'todo_list'

RSpec.describe TodoList do
  context 'calls from Todo' do 
    it 'adds a todo to the todo list' do
      todo_list = TodoList.new
      todo = Todo.new('finish multitask classes')
      todo_list.add(todo)
      expect(todo_list.incomplete).to eq [todo]
    end

    it "returns list of two incomplete tasks" do
      todo_list = TodoList.new
      todo = Todo.new('lalala')
      todo_2 = Todo.new('blah blah')
      todo_list.add(todo)
      todo_list.add(todo_2)
      expect(todo_list.incomplete).to eq [todo, todo_2] 
    end

    it "returns single and multiple complete todo/todos" do
      todo_list = TodoList.new
      todo = Todo.new('lalala')
      todo_2 = Todo.new('too much')
      todo_list.add(todo)
      todo_list.add(todo_2)
      todo.mark_done!
      todo_2.mark_done!
      todo.done?
      todo_2.done?
      expect(todo_list.complete).to eq [todo, todo_2]
    end

    it 'marks every task as complete when give_up! is called' do
      todo_list = TodoList.new
      todo = Todo.new('lalala')
      todo_2 = Todo.new('too much')
      todo_list.add(todo)
      todo_list.add(todo_2)
      todo_list.give_up!
      expect(todo_list.complete).to eq [todo, todo_2]
    end
  end
end