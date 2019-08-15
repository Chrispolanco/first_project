class Constellations
  
  attr_accessor :official_name, :common_name, :url, :pronunciation, :abbreviation, :genitive, :right_ascension, :declination, :area_in_square_degrees, :crosses_meridian, :visible_between_latitudes
  
  def initialize(official_name, common_name, url, pronunciation=nil, abbreviation=nil, genitive=nil, right_ascension=nil, declination=nil, area_in_square_degrees=nil, crosses_meridian=nil, visible_between_latitudes=nil) 
    
    @official_name = official_name
    @common_name = common_name
    @url = url 
    @pronunciation = pronunciation
    @abbreviation = abbreviation
    @genitive = genitive
    @right_ascension = right_ascension
    @declination = declination
    @area_in_square_degrees = area_in_square_degrees
    @crosses_meridian = crosses_meridian
    @visible_between_latitudes = visible_between_latitudes
  
    
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    self.class.all << self
  end   
  
end 