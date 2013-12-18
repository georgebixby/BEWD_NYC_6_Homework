class TimesHeadline
  attr_accessor :headlines

  def initialize(year)
    @headlines = []
    @year = year
    get_from_times
  end

  def get_input
    gets.strip
  end

  def get_from_times
    response = RestClient.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?q=obama&facet_field=source&fl=headline&begin_date=#{@year}0101&end_date=#{@year}1231&api-key=C4A37DBB38074098B320EECA2F206C64:16:68558770")
    parsed_times = JSON.parse(response)
    parsed_times["response"]["docs"].each do |article|
      @headlines << article["headline"]["main"]
    end
  end

end
