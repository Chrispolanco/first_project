class Constellations 
  attr_accessor :pronunciation, :abbreviation, :genitive, :right_ascension, :declination, :area_in_square_degrees, :crosses_meridian, :visible_between_latitudes
  
  def inner_page 
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellation-corona-australis.html"))

    
  end
  
  def info
    doc = inner_page 
    #new_doc = doc.css('div#con-text text()')[13].text
    #puts general_information = doc.css('div#con-text p')[1].text.squeeze
    #puts ""
    #puts general_information = doc.css('div#con-text p')[2].text.squeeze
    #puts""
    puts general_information = doc.css('div#main-content-center p')[1].text
    puts""
    puts general_information = doc.css('div#main-content-center p')[2].text
    puts""
    puts general_information = doc.css('div#main-content-center p')[3].text
    puts""
    puts general_information = doc.css('div#main-content-center p')[4].text
  end 
  
end 

test = Constellations.new 

  binding.pry 