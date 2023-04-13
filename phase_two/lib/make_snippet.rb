def make_snippet(str)
  new_str = str.split(' ')

  new_str.slice(0, 5).join(' ')
end