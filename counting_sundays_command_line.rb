require 'date'
require 'time'


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
