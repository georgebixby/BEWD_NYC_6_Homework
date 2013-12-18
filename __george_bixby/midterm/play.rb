require 'json'
require 'rest-client'
require 'pry'
require './word_counter'
require './times_headline'

@year = 0

while @year <= 1900 || @year >= 2013 do
  puts "Please enter a date between 1900 and 2013"
  year = gets
  @year = year.to_i
end


t = TimesHeadline.new(@year)
w = WordCounter.new(t.headlines)
w.count_words
