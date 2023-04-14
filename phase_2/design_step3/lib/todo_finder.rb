def todo_finder(text)
  fail 'Error, this is not a valid text' if text.nil?

  if text.empty?
    false
  elsif text.include? '#TODO'
    true
  else 
    false
  end
end