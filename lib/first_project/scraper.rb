class Scraper
  
  STANDARD_URL = "http://www.seasky.org/constellations/constellations"
  INNER_URL = "http://www.seasky.org/constellations/constellation"
  
  #def self.months
  #  doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
  #  calendar = doc.css('div#main-content-center a')[0..11].each do |month|
  #    name = month.text 
  #    url = month.attr("href")
  #    new_month= Months.new(name, url)
  #    new_month.save 
  #  end
  #end 

#  def constellations(new_month)
#    doc = Nokogiri::HTML(open(STANDARD_URL + new_month.url))
#    months_constellations = doc.css('h3').each do |single|
#      official_name = single.text
#      url = single.css("a").attr("href").value
#      single_constellation = Constellations.new(official_name,url)
#      single_constellation.save 
#  end 
      
      
      
#   all_common = doc.css('h5').each do |single_common|
#     common_name = single_common.text
#   end



  def details(single_constellation)
    doc = Nokogiri::HTML(open(INNER_URL + new_month.url))
    
    
    
    
    
    
    
    
    
  end
 
 :official_name, :common_name, :url, :pronunciation, :abbreviation, :genitive, :right_ascension, :declination, :area_in_square_degrees, :crosses_meridian, :visible_between_latitudes
 
  
  
end 
