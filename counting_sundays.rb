require 'date'
require 'time'

# Getting the Date Range from the user
#Start Date
  # Ask User for 2 digit day, 2 digit month, and 4 digit year
  # Format all three
#End Date
  # Repeat the above steps

  #Get range of days between the two dates
  #loop through, grab all sundays and push into an array
  #count indexes in array and return int

# puts Date.today


def all_the_sundays
  puts 'Sunday, Sunday, SUNDAY! Let\'s find out how many days of monster truck madness happened between two dates.'

  puts 'Please enter a start date (mm/dd/yyyy)'
    start_date_input = gets.chomp.to_s
    start_date = Date.strptime(start_date_input, "%m/%d/%Y")
  puts 'Please enter an end date (mm/dd/yyyy)'
    end_date_input = gets.chomp.to_s
    end_date = Date.strptime(end_date_input, "%m/%d/%Y")

  sunday = [0]

# This will get all sundays in a given range
  all_sundays = (start_date..end_date).select { |day| sunday.include? (day.wday)}
#Gets all Sundays on the 1st of the month
sundays_first_array = []
  all_sundays.each do |sunday| 
    if sunday.day == 01 
      sundays_first_array << sunday
      puts sunday.strftime('%a %d %b %Y')
    end
    end


puts "#{sundays_first_array.count} Sundays fell on the first of the month between #{start_date.strftime('%d %b %Y')} and #{end_date.strftime('%d %b %Y')}"

# p sundays_first_array.first.sunday?

end

all_the_sundays

# d = Date.new(1979-07-01)
# p d.sunday?