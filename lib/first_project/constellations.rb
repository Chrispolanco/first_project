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
    @pronunciation = doc.css('div#con-text text()')[8].text.strip
    @pronunciation.slice!(0..4)
    @pronunciation
    
  end 
  
  def abbreviation
    doc = inner_page
    @abbreviation = doc.css('div#con-text text()')[11].text.strip
    @abbreviation.slice!(0..4)
    @abbreviation
    
  end 
  
  def genitive
    doc = inner_page
    @genitive = doc.css('div#con-text text()')[13].text.strip
    @genitive.slice!(0..4)
    @genitive
    
  end 
  
  def right_ascension
    doc = inner_page
    @right_ascension = doc.css('div#con-text text()')[16].text.strip
    @right_ascension.slice!(0..4)
    @right_ascension
    
  end 
  
  def declination
    doc = inner_page
    @declination = doc.css('div#con-text text()')[18].text.strip
    @declination.slice!(0..4)
    @declination
    
  end   
  
  def area_in_square_degrees
    doc = inner_page
    @area_in_square_degrees = doc.css('div#con-text text()')[21].text.strip
    @area_in_square_degrees.slice!(0..4)
    @area_in_square_degrees
    
  end  
  
  def find(num)
    doc = inner_page
    pronunciation = doc.css('div#con-text text()')[num].text.strip
  end 
  
end 

test = Constellations.new 

  binding.pry 