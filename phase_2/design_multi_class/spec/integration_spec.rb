require './lib/diary'
require './lib/todo'

RSpec.describe do
  xit 'adds all the completed todos to the diary entries' do
    diary = Diary.new
    todo = Todo.new
    todo.add("my todo")
    result = todo.marked_complete
    diary.add_todo(result) # adds todos marked as complete

    expect(diary.list_entries).to eq [result]
  end
end
