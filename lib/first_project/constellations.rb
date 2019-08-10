class Constellations 
  attr_accessor :pronunciation, :abbreviation, :genitive, :right_ascension, :declination, :area_in_square_degrees, :crosses_meridian, :visible_between_latitudes
  
  def inner_page   
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellation-corona-australis.html"))
  end
  
  def info(num)
    doc = inner_page
    puts general_information = doc.css('div#main-content-center p')[1].text
    puts""
    puts general_information = doc.css('div#main-content-center p')[2].text
    puts""
    puts #general_information = doc.css('div#main-content-center p')[3].text
    puts""
    puts general_information = doc.css('div#main-content-center p')[4].text
  end 
  
  def pronunciation
    doc = inner_page
    pronunciation = doc.css('div#con-text text()')[8].text.strip
    pronunciation.slice!(0..4)
    pronunciation
    
  end 
  
  def find(num)
    doc = inner_page
    pronunciation = doc.css('div#con-text text()')[num].text
  end 
  
end 

test = Constellations.new 

  binding.pry 