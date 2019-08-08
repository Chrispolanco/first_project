class Constellations 
  attr_accessor :pronunciation, :abbreviation, :genitive, :right_ascension, :declination, :area_in_square_degrees, :crosses_meridian, :visible_between_latitudes
  
  def inner_page 
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellation-corona-australis.html"))
  end
  
  def info
    doc = inner_page
    #new_doc = doc.search('div#con-text')
    #new_doc = doc.search('div#con-text').attribute
    new_doc = doc.css('div#con-text text()')[13].text
    #gsub(/^(&nbsp;|\s)+/, '')
  end 
  
end 

test = Constellations.new 

  binding.pry 