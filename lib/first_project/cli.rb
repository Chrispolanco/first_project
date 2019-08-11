#Our CLI Controller (Dealing with inputs)
class CLI
  
  def run 
    self.welcome
  end 

  def welcome
   puts ""
   puts "Welcome Constellation Information Seekers!"
   puts ""
   selection
  end 
  
  def selection 
    puts ""
    puts "Which months constellations are you interested in learning about?"
    input = gets.strip.to_i
    
  end
  
  
  
  

  
end

