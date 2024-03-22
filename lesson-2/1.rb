arr = ['hi ', 'there.', ' nice', ' meeting you.']
new_str = ''
arr.each { |i| new_str.concat(i) }

puts new_str