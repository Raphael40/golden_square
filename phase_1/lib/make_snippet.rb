def make_snippet(str)
  fail 'Please enter a string' if str.empty?

  new_str = str.split(' ')
  
  if new_str.length <= 5 && new_str.length >= 1
    str
  else
    new_str = new_str.slice(0, 5).join(' ')
    "#{new_str}..."
  end
end