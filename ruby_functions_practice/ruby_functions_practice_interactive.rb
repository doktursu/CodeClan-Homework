#### Create a command line interface using put, gets to interact with the your functions 

# Load date
require 'date'
#will load in functions from the file
require_relative "./ruby_functions_practice"

# Functions
def prompt(arg)
  print arg
  gets.chomp
end

def prompt_i(arg)
  prompt(arg).to_i
end

def choose_menu(type, array)
  list = ""
  array.each { |function| list << function + " | " }
  # Remove final " | "
  list = list[0...-3]
  puts "Choose a #{type}: " + list
end

# Values
category_list = ['Integer', 'String', 'Geometry', 'Date']
integer_list = ['add', 'subtract', 'multiply', 'divide']
string_list = ['length', 'join', 'string addition']
geometry_list = ['cube volume', 'sphere volume']
date_list = ['full month', 'short month', 'christmas', 'age']


########## Program begins ##########
puts "~~~~~Try out a function!~~~~~"

# Display categories menu
choose_menu('category', category_list)
# Get user choice
category = prompt('category: ').downcase

# Display functions menu
case category
  when 'integer'
    choose_menu('function', integer_list)
  when 'string'
    choose_menu('function', string_list)
  when 'type'
    choose_menu('function', type_list)
  when 'geometry'
    choose_menu('function', geometry_list)
  when 'date'
    choose_menu('function', date_list)
  else
    puts "Category invalid. Please start over."
    exit
end
# Get user choice
function = prompt('function: ').downcase

# Execute chosen function
case function
  #### Integer Play
  when 'add'
    number_1 = prompt_i("Enter a number to add: ")
    number_2 = prompt_i("Enter a second number to add: ")
    add_result = add( number_1, number_2 )
    puts "#{number_1} + #{number_2} = #{add_result}"

  when 'subtract'
    number_1 = prompt_i("Enter a number to subtract from: ")
    number_2 = prompt_i("Enter a number to subtract: ")
    subtract_result = subtract( number_1, number_2 )
    puts "#{number_1} - #{number_2} = #{subtract_result}"

  when 'multiply'
    number_1 = prompt_i("Enter a number to multiply: ")
    number_2 = prompt_i("Enter a number to multiply by: ")
    multiply_result = multiply( number_1, number_2 )
    puts "#{number_1} * #{number_2} = #{multiply_result}"

  when 'divide'
    number_1 = prompt_i("Enter a number to divide: ")
    number_2 = prompt_i("Enter a number to divide by: ")
    divide_result = divide( number_1, number_2 )
    puts "#{number_1} / #{number_2} = #{divide_result}"

  #### String Play
  when 'length'
    test_string = prompt("Enter a string to find its length: ")
    length_of_string = length_of_string(test_string)
    puts "#{test_string} is length #{length_of_string}"

  when 'join'
    string_1 = prompt("Enter a string to join: ")
    string_2 = prompt("Enter a second string to join: ")
    joined_string = join_string(string_1, string_2)
    puts "Joined string: #{joined_string}"

  when 'string addition'
    string_1 = prompt("Enter a number to add (we will save it as a string): ")
    string_2 = prompt("Enter a second number to add (we will save it as a string too): ")
    add_result = add_string_as_number(string_1, string_2)
    puts "#{string_1} + #{string_2} = #{add_result}, (not #{string_1 + string_2}!)"

  ####Geometry
  when 'cube volume' 
    cube_length = prompt("Enter the length of a cube: ").to_f
    cube_volume = volume_of_cube(cube_length)
    puts "A cube with the side of #{cube_length}un has a volume of #{cube_volume}un^3"

  when 'sphere volume'
    sphere_radius = prompt("Enter the radius of a sphere: ").to_f
    sphere_volume = volume_of_sphere(sphere_radius)
    puts "A sphere with the radius of #{sphere_radius}un has a volume of #{sphere_volume}un^3"

  ####Date
  when 'full month'
    month = prompt_i("Enter the number of a month (1~12): ")
    ordinal = number_to_ordinal(month)
    month_string = number_to_full_month_name(month)
    puts "The #{ordinal} month is #{month_string}"

  when 'short month'
    month = prompt_i("Enter the number of a month (1~12): ")
    ordinal = number_to_ordinal(month)
    month_string = number_to_short_month_name(month)
    puts "The #{ordinal} month in 3 letters is #{month_string}"

  when 'christmas'
    year = Date.today.year
    puts "The year is: #{year}"
    month = prompt_i("Enter the month (1~12): ")
    day = prompt_i("Enter the day: ")
    today = Date.new(year, month, day)
    nights = nights_until_christmas(today)
    puts "There are #{nights} nights until Christmas"

  when 'age'
    year = prompt_i("Enter a birth-year: ")
    month = prompt_i("Enter a birth-month (1~12): ")
    day = prompt_i("Enter a birthday: ")
    bday = Date.new(year, month, day)
    age = age_today(bday)
    puts "A person born on #{bday} is #{age}-years-old today"

  else
    puts "Function invalid. Please start over."
    exit
end
