def punctuation_checker(sentence)
  if sentence == ''
    false
  elsif sentence[0] == sentence[0].upcase && sentence[-1] == '.'
    true
  elsif sentence[0] == sentence[0].upcase && sentence[-1] == '?'
    true
  elsif sentence[0] == sentence[0].upcase && sentence[-1] == '!'
    true
  else 
    false
  end
end 