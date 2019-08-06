class Scraper 

  def get_page 
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
  end
  
  def month(num)
    doc = get_page
    new_doc = doc.css('div#main-content-center a')[num].text
    new_doc
  end 
  
  binding.pry 
  
end 