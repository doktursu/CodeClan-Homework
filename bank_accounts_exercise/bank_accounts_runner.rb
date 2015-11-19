require_relative('./bank_accounts_functions')

##number of bank accounts
bank_accounts_count = number_of_bank_accounts()
puts "number of accounts #{bank_accounts_count}"
puts "\n"

##first account owner
first_bank_owner = first_bank_account_holder()
puts "first bank account owner is #{first_bank_owner}"
puts "\n"

##print to screen name of all bank account owners
puts "name of bank acccount owners"
print_owner_names()
puts "\n"

##total cash in bank
total_cash = total_cash_in_bank()
puts "total in bank #{total_cash}"
puts "\n"

##last account owner
last_bank_owner = last_bank_account_holder()
puts "last bank account owner is #{last_bank_owner}"
puts "\n"

##average bank account value
average_account_value = average_bank_account_value()
puts "average account value #{average_account_value}"
puts "\n"

##total cash in business accounts
total_cash_business = total_cash_business_account()
puts "total in business accounts #{total_cash_business}"
puts "\n"

##holder of largest bank account
largest_account_holder = largest_bank_account_holder()
puts "holder of largest bank account is #{largest_account_holder}"
puts "\n"

##holder of largest personal account
largest_personal_account_holder = largest_personal_bank_account_holder()
puts "holder of largest personal bank account is #{largest_personal_account_holder}"
puts "\n"

###any other functionality you want to add.

##holder of largest business account
largest_business_account_holder = largest_bank_account_holder_of_type('business')
puts "holder of largest business bank account is #{largest_business_account_holder}"
puts "\n"

##holder of smallest bank account
smallest_account_holder = smallest_bank_account_holder_of_type()
puts "holder of smallest bank account is #{smallest_account_holder}"
puts "\n"

##holder of smallest business account
smallest_business_account_holder = smallest_bank_account_holder_of_type('business')
puts "holder of smallest business bank account is #{smallest_business_account_holder}"
puts "\n"

##holder of smallest personal account
smallest_personal_account_holder = smallest_bank_account_holder_of_type('personal')
puts "holder of smallest personal bank account is #{smallest_personal_account_holder}"
puts "\n"

##open a bank account
puts "Open a bank account"
print "Name: "
holder_name = gets.chomp
print "Amount to deposit: £"
amount = gets.to_i
print "Account type (personal/business): "
type = gets.chomp
puts "\n"
open_bank_account(holder_name, amount, type)
puts "\n"

##updated last account owner
last_bank_owner = last_bank_account_holder()
puts "last bank account owner is now #{last_bank_owner}"
puts "\n"

