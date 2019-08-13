#Our CLI Controller (Dealing with inputs)
class CLI
  
  def call  
    puts ""
    puts "Welcome Constellation Information Seekers!"
    puts ""
    puts "Which months constellations are you interested in learning about?"
    puts "" 
    Scraper.month_list
    start 
  end 
  
  def start 
    input = ""
    while input != "exit"
      input = gets.strip.to_i-1
      if input > 0 && input < 13
        puts "yes"
      else 
        puts "Sorry that would not be a valid choice, please type 'exit' to leave"
    end
  end 
          binding.pry 
end 

end 

