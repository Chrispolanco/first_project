class Months 
  @@ = []
  
  attr_accessor :name, :url 
  
  def initialize(name, url)
    @name = name 
    @url = url 
    
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    self.class.all << self
  end 
  
end 