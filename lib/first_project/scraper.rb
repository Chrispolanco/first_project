class Scraper 

  def get_page 
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
    new_doc = doc.css('div#main-content-center a').text
  end
  
  
  
end 