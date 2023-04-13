def reading_speed(text)
  word_speed = 0.3
  sentence_length = text.split(' ').length 
  result = word_speed * sentence_length
  result.round(1)
end