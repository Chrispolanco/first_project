class Constellations
  
  attr_accessor :official_name, :url, :pronunciation, :abbreviation, :genitive, :right_ascension, :declination, :area_in_square_degrees, :crosses_meridian, :visible_between_latitudes, :gen_info_one, :gen_info_two, :gen_info_three, :gen_info_four 
  
  def initialize(official_name, url, pronunciation=nil, abbreviation=nil, genitive=nil, right_ascension=nil, declination=nil, area_in_square_degrees=nil, crosses_meridian=nil, visible_between_latitudes=nil, gen_info_one=nil, gen_info_two= nil, gen_info_three= nil, gen_info_four= nil) 
    
    @official_name = official_name
    @url = url 
    @pronunciation = pronunciation
    @abbreviation = abbreviation
    @genitive = genitive
    @right_ascension = right_ascension
    @declination = declination
    @area_in_square_degrees = area_in_square_degrees
    @crosses_meridian = crosses_meridian
    @visible_between_latitudes = visible_between_latitudes
    @gen_info_one= gen_info_one
    @gen_info_two= gen_info_two
    @gen_info_three= gen_info_three
    @gen_info_four= gen_info_four
    
    
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    self.class.all << self
  end   
  
end 