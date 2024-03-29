puts "Enter loan amount in $"
loan_amt = gets.to_f

puts "Enter the APR in percentages (e.g. Enter 6 for 6% APR)"
apr = gets.to_f * 0.01
monthly_int = apr / 12

puts "Enter the loan duration in months"
loan_duration = gets.to_f


monthly_paymnt = loan_amt * (monthly_int / (1 - (1 + monthly_int)**(-loan_duration)))

puts "Your monthly payment is $#{monthly_paymnt}."

