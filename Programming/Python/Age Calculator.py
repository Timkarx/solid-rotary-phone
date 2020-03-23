import datetime
date = datetime.datetime.now()
current_year = date.year
name = input( "What is your name ? " )
age = input( "What is your age ? " )
print ("Nice to meet you " + name + ".")
birth_year = float(current_year) - int (age)
year_in_100 = int(birth_year) + 100
print ("You were born in " + str(int(birth_year)) +
       " and you will turn 100 in year " + str(int(year_in_100)))
