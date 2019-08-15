#Our CLI Controller (Dealing with inputs)
class CLI
  
  def run 
    puts ""
    puts "Welcome Constellation Information Seekers!"
    puts ""
    puts "Which months constellations are you interested in learning about?"
    puts "" 
   Scraper.months
#    list_months 
  end
  
end 

