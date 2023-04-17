class DiaryEntry
  
  def initialize(title, contents)
    @title = title
    @contents = contents
    @furthest_word = 0
  end

  def title
    @title
  end
  
  def contents
    @contents
  end
  
  def count_words
    word_count = @contents.split(" ").length
    word_count
  end
  
  def reading_time(wpm)
    fail 'wpm must be above 0' unless wpm.positive?

    contents_length = @contents.split(" ").length
    r_time = contents_length / wpm.to_f
    r_time.round(2)
  end

  def reading_chunk(wpm, minutes)
    fail 'wpm must be above 0' unless wpm.positive?

    word_count = (wpm * minutes)
    start_from = @furthest_word
    end_at = @furthest_word + word_count
    contents_array = @contents.split(" ")
    @read_length = contents_array.slice(start_from...end_at)
    @furthest_word = end_at
    if end_at >= count_words
      @furthest_word = 0
    else
      @furthest_word = end_at
    end
    @read_length.join(" ")
  end
end