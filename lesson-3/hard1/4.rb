# determine whether a string is an ip address
# return true or false
# is_an_ip_number? determines if a string is a num str bw 0 and 255

# return false if not ip address
# handle invalid inputs 
def is_an_ip_number?(str)  
  str.to_i > 0 && str.to_i < 256
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

puts dot_separated_ip_address?("1.2.3.4")