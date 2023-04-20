require './lib/diary'
require './lib/todo'

RSpec.describe do
  it 'adds all the completed todos to the diary entries' do
    diary = Diary.new
    todo = Todo.new
    todo.add("my todo")
    todo.marked_complete
    todo.done?
    diary.add_todo(todo)

    expect(diary.list_entries).to eq [todo]
  end
end
