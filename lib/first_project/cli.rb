#Our CLI Controller (Dealing with inputs)
#Our CLI Controller (Dealing with inputs)
class CLI
  
  def run 
    puts ""
    puts "Welcome Constellation Information Seekers!"
    puts ""
    puts "Which months constellations are you interested in learning about?"
    Scraper.month_list
    while input != "exit"
      puts "Which months constellations are you interested in learning about?"
      Scraper.month_list
      input = gets.strip.to_i-1
      if input > 0 && input < 13
        puts "yes"
      else 
        puts "Sorry that would not be a valid choice, please type 'exit' to leave"
    end
  end 
end 

