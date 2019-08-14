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
      input = gets.strip.to_i
      if input >= 0 && input <= 12
        constellations_list
      else 
        puts "Sorry that would not be a valid choice, please type 'exit' to leave"
    end
  end 
          binding.pry 
end 

  def constellation_list
    month_link = Scraper.month_link(input)
  end 

end 

