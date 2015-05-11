require_relative 'counting_sundays'
require 'date'
require 'time'

describe '#all_the_sundays' do
  it 'should return all Sundays falling on the first of the month from my birthday to present' do
    expect(all_the_sundays("05/13/1979", "05/13/2015")).to eq("63 Sundays fell on the first of the month between 13 May 1979 and 13 May 2015")
  end

  it 'should return all Sundays falling on the first of the month in the 20th century' do
    expect(all_the_sundays("01/01/1901", "12/31/2000")).to eq("171 Sundays fell on the first of the month between 01 Jan 1901 and 31 Dec 2000")
  end

  it 'should return all Sundays falling on the first of the month in 2015 to date' do
    expect(all_the_sundays("01/01/2015", "05/10/2015")).to eq("2 Sundays fell on the first of the month between 01 Jan 2015 and 10 May 2015")
  end

  # it "should return all Sundays falling on the first of the month from the user's birthday" do
  #   expect(all_the_sundays("MM/DD/YYYY", "MM/DD/YYYY")).to eq("")
  # end
end