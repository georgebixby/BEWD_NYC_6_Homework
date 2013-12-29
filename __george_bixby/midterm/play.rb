require 'json'
require 'rest-client'
require 'pry'
require './word_counter'
require './times_headline'

@year = 0

while @year <= 1900 || @year >= 2013 do
  puts "Please enter a date between 1900 and 2013"
  year = gets
  #gets.chomp (in case the user input something with a space)
  @year = year.to_i
end

#Why is @year an instance variable. If you are simply using year as a variable to be able to pass it into
# TimesHealine.new(year) it does not need to be an instance variable. 

t = TimesHeadline.new(@year)
w = WordCounter.new(t.headlines)
w.count_words
