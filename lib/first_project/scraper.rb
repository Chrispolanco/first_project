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
    all_official = doc.css('h3').each do |single_official|
      official_name = single_official.text
    all_common = doc.css('h5').each do |single_common|
      common_name = single_common.text 
        test << common_name && official_name
    end 
  end 
    binding.pry 
    common_name = doc.css('h5')
    url 
    
  end 
  
  
  def self.constellations(num)
    html = Nokogiri.HTML(open("#{month_link}"))
    constellation = html.css('div#mainContent h3 a')[num].attribute('href').value
    new_html = ("http://www.seasky.org/constellations/#{constellation}")
  end 

end 

