require 'date'
require 'time'

  puts 'Sunday, Sunday, SUNDAY! Let\'s find out how many days of monster truck madness happened on the first of the month between two dates.'

  def all_the_sundays(start_date_input, end_date_input)
      # start_date_input = date_input_1.to_s
      start_date = Date.strptime(start_date_input, "%m/%d/%Y")

      # end_date_input = date_input_2.to_s
      end_date = Date.strptime(end_date_input, "%m/%d/%Y")

  # This will get all sundays in a given range
    sunday = [0]
    all_sundays = (start_date..end_date).select { |day| sunday.include? (day.wday)}

  #Gets all Sundays on the 1st of the month
    sundays_first_array = []
      all_sundays.each do |sunday| 
        if sunday.day == 01 
          sundays_first_array << sunday
          puts sunday.strftime('%a %d %b %Y')
        end
      end

  p "#{sundays_first_array.count} Sundays fell on the first of the month between #{start_date.strftime('%d %b %Y')} and #{end_date.strftime('%d %b %Y')}"
  end

#Tests

# Please enter a start date and end_date in the following format ("mm/dd/yyyy", "mm/dd/yyyy")

# My birthday

all_the_sundays("05/13/1979", "05/13/2015") # => "63 Sundays fell on the first of the month between 13 May 1979 and 13 May 2015"

# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)

all_the_sundays("01/01/1901", "12/31/2000") # => "171 Sundays fell on the first of the month between 01 Jan 1901 and 31 Dec 2000"


# How many Sundays fell on the first of the month this year (2015)?
all_the_sundays("01/01/2015", "05/10/2015") # => "2 Sundays fell on the first of the month between 01 Jan 2015 and 10 May 2015"

#Your birthday
# all_the_sundays("MM/DD/YYYY", "MM/DD/YYYY") 




