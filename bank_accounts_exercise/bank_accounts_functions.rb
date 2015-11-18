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
    amount: 150,
    type: "personal"
  },
  {
    holder_name: "Sandy",
    amount: 4500,
    type: "business"
  },
]

########## By Looping ##########
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
  total_cash_in_bank()/ACCOUNTS.length
end

def total_cash_business_account()
  total_cash_business = 0
  for account in ACCOUNTS
    total_cash_business += account[:amount] if account[:type] == "business"
  end
  return total_cash_business
end

def largest_bank_account_holder()
  amounts = []
  for account in ACCOUNTS
    amounts << account[:amount]
  end
  largest_amount = amounts.max
  i = amounts.index(largest_amount)

  return ACCOUNTS[i][:holder_name]
end

def largest_personal_bank_account_holder()
  amounts = []
  for account in ACCOUNTS
    if account[:type] == 'personal'
      amounts << account[:amount]
    else
      amounts << -1
    end
  end
  largest_amount = amounts.max
  i = amounts.index(largest_amount)

  return ACCOUNTS[i][:holder_name]
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

