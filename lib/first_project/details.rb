class Details  
  
  
  def inner_page   
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellation-aquarius.html"))
  end
  
  def pronunciation
    doc = inner_page
    pronunciation = doc.css('div#con-text text()')[8].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
  end 
  
  def abbreviation
    doc = inner_page
    abbreviation = doc.css('div#con-text text()')[11].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
  end 
  
  def genitive
    doc = inner_page
    value  = []
    genitive = doc.css('div#con-text text()')[13].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    value  << genitive
    
  end 
  
  def right_ascension
    doc = inner_page
    right_ascension = doc.css('div#con-text text()')[16].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    
  end 
  
  def declination
    doc = inner_page
    declination = doc.css('div#con-text text()')[18].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    
  end   
  
  def area_in_square_degrees
    doc = inner_page
    area_in_square_degrees = doc.css('div#con-text text()')[21].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    
  end  
  
  def crosses_meridian
    doc = inner_page
    crosses_meridian = doc.css('div#con-text text()')[24].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse

  end  
  
  def visible_between_latitudes
    doc = inner_page
    visible_between_latitudes = doc.css('div#con-text text()')[27].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse

  end  
  
  
  def info
    doc = inner_page
    
    general_information = doc.css('div#main-content-center p')[1].text
    
    general_information = doc.css('div#main-content-center p')[2].text
    
    general_information = doc.css('div#main-content-center p')[3].text
    
    general_information = doc.css('div#main-content-center p')[4].text
  end   
  
end 
