require './lib/todo_finder'

RSpec.describe 'check if a string includes #TODO' do
  it 'can find the todo_finder method' do
  end

  context 'tests that return false' do
    it 'does not find #TODO in an empty string, false' do
      todo_item = todo_finder('')

      expect(todo_item).to eq false
    end

    it 'returns false for todo in wrong format' do
      todo_item = todo_finder('not todo')
      todo_item_2 = todo_finder('still not TODO')
      todo_item_3 = todo_finder('also not a #todo')

      expect(todo_item).to eq false
      expect(todo_item_2).to eq false
      expect(todo_item_3).to eq false
    end
  end

  context 'texts that return true' do
    it 'returns true when #TODO is present in text' do
      todo_item = todo_finder('I am a #TODO')

      expect(todo_item).to eq true
    end

    it 'returns true when text has no spaces' do
      todo_item = todo_finder('Iamalsoonthe#TODOlist')

      expect(todo_item).to eq true
    end

    it 'returns true when text has multiple #TODOs' do
      todo_item = todo_finder('#TODO#TODO#TODO')

      expect(todo_item).to eq true
    end
  end

  context 'errors' do
    it 'returns and error when input is nil' do
      expect { todo_finder(nil) }.to raise_error 'Error, this is not a valid text'
    end
  end
end
