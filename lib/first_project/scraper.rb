class Scraper 

  def get_page 
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
  end
  
  def month(num)
    doc = get_page
    new_doc = doc.css('div#main-content-center a')[num].text
    new_doc
  end 
  
  def constellations(num)
     html = Nokogiri.HTML(open("http://www.seasky.org/constellations/constellations-january.html")) 
    official_name = html.css('h3 a')[num].text
    official_name
  
  end
  
end 

test = Scraper.new 

  binding.pry 
