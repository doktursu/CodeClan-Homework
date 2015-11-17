#### Example

def return_10
  10
end


#### Integer Play

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2
end


#### String Play

def length_of_string(str)
  str.length
end

def join_string(str1, str2)
  str1 + str2
end


#### Type Conversion

def add_string_as_number(str1, str2)
  str1.to_i + str2.to_i
end


#### Conditional Logic

def number_to_full_month_name(num)
  case num   
    when 1
      "January"
    when 2
      "February"
    when 3
      "March"
    when 4
      "April"
    when 5
      "May"
    when 6
      "June"
    when 7
      "July"
    when 8
      "August"
    when 9
      "September"
    when 10
      "October"
    when 11
      "November"
    when 12
      "December"
  end
end

def number_to_short_month_name(num)
  number_to_full_month_name(num)[0..2]
end

def number_to_ordinal(num)
  case num   
    when 1
      "first"
    when 2
      "second"
    when 3
      "third"
    when 4
      "fourth"
    when 5
      "fifth"
    when 6
      "sixth"
    when 7
      "seventh"
    when 8
      "eighth"
    when 9
      "ninth"
    when 10
      "tenth"
    when 11
      "eleventh"
    when 12
      "twelth"
  end
end


#### Further Challenges

def volume_of_cube(side)
  side**3
end

def volume_of_sphere(radius)
  4/3 * Math::PI * radius**3
end

def nights_until_christmas(date)

  # Set Christmas Day to Current Year
  year = Date.today.year
  xmas_day = Date.new(year,12,25)

  # Set Christmas Day to Next Year if date is past Christmas of current year
  xmas_day = Date.new(year+1,12,25) if xmas_day - date < 0

  (xmas_day - date).to_i
end

def age_today(date)
  ((Date.today - date)/365).to_i
end    
