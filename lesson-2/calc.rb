require 'yaml'
MESSAGES = YAML.load_file('calc_messages.yml')

LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

puts MESSAGES.inspect

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

def operation_to_message(op)
  word = case op
          when '1'
            'Adding'
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
         end

  x = 'random line of code'

  word
end

n1 = ''
n2 = ''

prompt(messages('welcome', LANGUAGE))
name = ''
loop do
  name = gets.chomp

  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  loop do
    prompt("Enter a number: ")
    n1 = gets.chomp

    if valid_number?(n1)
      break
    else
      prompt("Invalid number.")
    end
  end

  loop do
    prompt("Enter a second number: ")
    n2 = gets.chomp

    if valid_number?(n2)
      break
    else
      prompt("Invalid number.")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Enter 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             n1.to_i() + n2.to_i()
           when '2'
             n1.to_i() - n2.to_i()
           when '3'
             n1.to_i() * n2.to_i()
           when '4'
             n1.to_f() / n2.to_f()
           end
              
  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (y/n)")
  ans = gets.chomp
  break unless ans.downcase().start_with?('y')
          
end
          
prompt("Thank you for using calc. Bye.")

