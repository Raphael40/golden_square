class Diary
  def initialize
    @entries = []
    @mobile_numbers = []
  end

  def add_entry(entry) 
    @entries << entry
  end

  def add_todo(todo)

  end

  def list_entries
    @entries
  end

  def diary_entries_based_speed(minutes, wpm)
  end
  
  def list_mobile_numbers
    # if an entry is 11 numbers then throw into mobile_numbers array
  end
end