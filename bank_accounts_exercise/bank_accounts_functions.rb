##### Gave Tony 4500 in account to prove a concept #####

ACCOUNTS = [
  {
    holder_name: "Jay",
    amount: 55,
    type: "business"
  },
  {
    holder_name: "Rick",
    amount: 1,
    type: "personal"
  },
  {
    holder_name: "Keith",
    amount: 500,
    type: "business"
  },
  {
    holder_name: "Valerie",
    amount: 100,
    type: "personal"
  },
  {
    holder_name: "Michael",
    amount: 5,
    type: "personal"
  },
  {
    holder_name: "Kate",
    amount: 2000,
    type: "business"
  },
  {
    holder_name: "Tony",
    amount: 4500, #150
    type: "personal"
  },
  {
    holder_name: "Sandy",
    amount: 4500,
    type: "business"
  },
]

######### By Looping ##########
def number_of_bank_accounts()
  ACCOUNTS.length
end

def first_bank_account_holder()
  ACCOUNTS[0][:holder_name]
end

def print_owner_names()
  for account in ACCOUNTS
    puts account[:holder_name]
  end
end

def total_cash_in_bank()
  total_cash = 0
  for account in ACCOUNTS
    total_cash += account[:amount]
  end
  return total_cash
end

def last_bank_account_holder()
  ACCOUNTS[-1][:holder_name]
end

def average_bank_account_value()
  average_value = total_cash_in_bank()/ACCOUNTS.length.to_f
  # Truncate to 2 decimal places
  (average_value * 100).to_i / 100.0
end

def total_cash_business_account()
  total_cash_business = 0
  for account in ACCOUNTS
    total_cash_business += account[:amount] if account[:type] == "business"
  end
  return total_cash_business
end

def largest_bank_account_holder()
  max = ACCOUNTS[0][:amount]
  max_holder = ACCOUNTS[0][:holder_name]
  for account in ACCOUNTS
    if account[:amount] > max
      max = account[:amount]
      max_holder = account[:holder_name]
    # Check for multiple holders with max amount, 
    # and no repeat if first account is max_holder
    elsif account[:amount] == max && max_holder != account[:holder_name]
      max_holder = max_holder + " and " + account[:holder_name]
    end
  end
  return max_holder
end

def largest_personal_bank_account_holder()

  ######### By Looping ##########
  personal_accounts = []
  for account in ACCOUNTS
    if account[:type] == 'personal'
      personal_accounts << account
    end
  end

  max = personal_accounts[0][:amount]
  max_holder = personal_accounts[0][:holder_name]
  for account in personal_accounts
    if account[:amount] > max
      max = account[:amount]
      max_holder = account[:holder_name]
    # Check for multiple holders with max amount, 
    # and no repeat if first account is max_holder
    elsif account[:amount] == max && max_holder != account[:holder_name]
      max_holder = max_holder + " and " + account[:holder_name]
    end
  end
  return max_holder

  ######### With select and max_by ##########
  ######### Does not return multiple holders... ##########
  # personal_accounts = ACCOUNTS.select { |account| account[:type] == 'personal' } 
  # max_holder = personal_accounts.max_by { |account| account[:amount] }[:holder_name]

end

def largest_bank_account_holder_of_type(type=nil)
  if type == nil
    bank_accounts = ACCOUNTS
  else
    bank_accounts = []
    for account in ACCOUNTS
      if account[:type] == type
        bank_accounts << account
      end
    end
  end

  max = bank_accounts[0][:amount]
  max_holder = bank_accounts[0][:holder_name]
  for account in bank_accounts
    if account[:amount] > max
      max = account[:amount]
      max_holder = account[:holder_name]
    # Check for multiple holders with max amount, 
    # and no repeat if first account is max_holder
    elsif account[:amount] == max && max_holder != account[:holder_name]
      max_holder = max_holder + " and " + account[:holder_name]
    end
  end
  return max_holder
end

def smallest_bank_account_holder_of_type(type=nil)
  if type == nil
    bank_accounts = ACCOUNTS
  else
    bank_accounts = []
    for account in ACCOUNTS
      if account[:type] == type
        bank_accounts << account
      end
    end
  end

  min = bank_accounts[0][:amount]
  min_holder = bank_accounts[0][:holder_name]
  for account in bank_accounts
    if account[:amount] < min
      min = account[:amount]
      min_holder = account[:holder_name]
    # Check for multiple holders with min amount, 
    # and no repeat if first account is min_holder
    elsif account[:amount] == min && min_holder != account[:holder_name]
      min_holder = min_holder + " and " + account[:holder_name]
    end
  end
  return min_holder
end

def open_bank_account(name, amount, type)
  account = {
    holder_name: name,
    amount: amount,
    type: type
  }
  ACCOUNTS << account
  puts "Your #{type} account has been created. Thank you, #{name}."
  puts account
end

########## By Iterating ##########
# def number_of_bank_accounts()
#   ACCOUNTS.length
# end

# def first_bank_account_holder()
#   ACCOUNTS[0][:holder_name]
# end

# def print_owner_names()
#   ACCOUNTS.each do |account|
#     puts account[:holder_name]
#   end
# end

# def total_cash_in_bank()
#   total_cash = 0
#   ACCOUNTS.each do |account|
#     total_cash += account[:amount]
#   end
#   return total_cash
# end

# def last_bank_account_holder()
#   ACCOUNTS[-1][:holder_name]
# end

# def average_bank_account_value()
#   total_cash_in_bank()/ACCOUNTS.length
# end

# def total_cash_business_account()
#   total_cash_business = 0
#   ACCOUNTS.each do |account|
#     total_cash_business += account[:amount] if account[:type] == "business"
#   end
#   return total_cash_business
# end

# def largest_bank_account_holder()
#   amounts = []
#   ACCOUNTS.each do |account|
#     amounts << account[:amount]
#   end
#   largest_amount = amounts.max
#   i = amounts.index(largest_amount)

#   return ACCOUNTS[i][:holder_name]
# end

# def largest_personal_bank_account_holder()
#   amounts = []
#   ACCOUNTS.each do |account|
#     if account[:type] == 'personal'
#       amounts << account[:amount]
#     else
#       amounts << -1
#     end
#   end
#   largest_amount = amounts.max
#   i = amounts.index(largest_amount)

#   return ACCOUNTS[i][:holder_name]
# end

