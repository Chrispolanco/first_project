class Scraper 

  def get_page 
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
  end
  
  def month
    months = []
    doc = get_page
    months << doc.css('div#main-content-center a')[0..11].text
  end 
  
  def constellations(num)
     html = Nokogiri.HTML(open("http://www.seasky.org/constellations/constellations-december.html")) 
    return official_name = html.css('h3 a')[num].text 
    return common_name = html.css('h5')[num].text
    
  end 

test = Scraper.new
binding.pry 

end 




