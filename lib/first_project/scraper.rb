class Scraper 

  def get_page 
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
  end
      binding.pry

  
end 