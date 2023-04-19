require 'todo'

RSpec.describe Todo do
  it 'takes a task and returns it' do
    todo = Todo.new('finish my kitkat')
    
    expect(todo.task).to eq 'finish my kitkat'
  end

  it 'takes a task and marks it done' do
    todo = Todo.new('finish my kitkat')
    todo.mark_done!
    
    expect(todo.done?).to eq true
  end

  context "it fail" do
    it "raise error if empty string is passed" do
      todo = Todo.new('')
      expect { todo.task }.to raise_error "Please enter valid todo."
    end
  end
end