class Diary
  def initialize
    @entries = []
    @todo_entries = []
    @mobile_numbers = []
  end

  def add_entry(entry) 
    @entries << entry
  end

  def add_todo(todo)
    @todo_entries << todo

    @entries += @todo_entries.select { |task| task.done? }
  end

  def list_entries
    @entries
  end

  def diary_entries_based_on_speed(minutes, wpm)
    words_we_can_read = minutes * wpm
    best_fit = []
    
    @entries.each do |entry| 
      if entry.split.length == words_we_can_read
        best_fit << entry
      end
    end
    
    if best_fit.empty? 
      fail "There are no suitable diary entries."
    else
      return best_fit
    end 
  end
  
  def list_mobile_numbers

    mobile_number = @entries
    
    mobile_number.map! do |entry|
      entry.scan(/\d+/)
    end

    @mobile_numbers << mobile_number
    return @mobile_numbers.flatten
  end
end