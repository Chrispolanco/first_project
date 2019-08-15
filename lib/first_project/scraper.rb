class Scraper
  
  STANDARD_URL = "http://www.seasky.org/constellations/constellations"
  
  #def self.months
  #  doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
  #  calendar = doc.css('div#main-content-center a')[0..11].each do |month|
  #    name = month.text 
  #    url = month.attr("href")
  #    new_month= Months.new(name, url)
  #    new_month.save 
  #  end
  #end 

  def constellations
    test = []
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations-january.html"))
    #doc = Nokogiri::HTML(open(STANDARD_URL + new_month.url))
    all_official = doc.css('h3').each do |single|
      official_name = single.text
      url = single.css("a").attr("href").value
      
      test << url 
    end 
      
      binding.pry 
      
#   all_common = doc.css('h5').each do |single_common|
#     common_name = single_common.text
#   end
    test 
  end 
  
  def self.constellations(num)
    html = Nokogiri.HTML(open("#{month_link}"))
    constellation = html.css('div#mainContent h3 a')[num].attribute('href').value
    new_html = ("http://www.seasky.org/constellations/#{constellation}")
  end 

end 

