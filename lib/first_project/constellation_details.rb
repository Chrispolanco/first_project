class Constellations_Details 
  attr_accessor :pronunciation, :abbreviation, :genitive, :right_ascension, :declination, :area_in_square_degrees, :crosses_meridian, :visible_between_latitudes
  
  def get_page 
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellation-caelum.html"))
  end
  
  
end 

  binding.pry 

test = Constellation_Details.new 