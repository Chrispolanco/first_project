class Scraper 
  
  def month_list
    months = []
    list_month = doc.css('div#main-content-center a')
      list_month[0..11].each.with_index(1)  do |month, index| 
      months << "#{index} #{month.text}"
      end
    puts months 
  end 

  
  def month_link
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
    month = doc.css('div#main-content-center a')[0].attribute('href').value
    html = ("http://www.seasky.org/constellations/#{month}")
  
  end 

  
  def constellations(num)
    html = Nokogiri.HTML(open("http://www.seasky.org/constellations/constellations-december.html")) 
    puts official_name = html.css('h3 a')[num].text 
    puts common_name = html.css('h5')[num].text
    
  end 

end 

    test = Scraper.new
    binding.pry 
