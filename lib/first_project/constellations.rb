class Constellations 
  attr_accessor :pronunciation, :abbreviation, :genitive, :right_ascension, :declination, :area_in_square_degrees, :crosses_meridian, :visible_between_latitudes
  
  def get 
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellation-caelum.html"))
  end
  
  def details 
    new_doc = doc.css
  end 
  
end 

test = Constellations.new 

  binding.pry 