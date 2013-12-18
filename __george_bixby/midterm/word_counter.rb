class WordCounter

  def initialize(headline_array)
    @headline_array = headline_array
  end

  def count_words
    article_array = []
    @headline_array.each do |headline|
      article_array << headline.split
    end
    article_array.flatten!
    article_hash = {}
    useless_words = ["the", "of", "end", "a", "to", "with", "in", "they", "on", "from", "and", "an", "the" ]
    useful_words = article_array - useless_words

    useful_words.each do |word|
      if !article_hash[word]
        article_hash[word] = 1
      else
        article_hash[word] +=1
      end
    end
    puts article_hash.sort_by { |word, count| count}.reverse!
  end
end