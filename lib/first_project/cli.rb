class CLI
  
  def run 
    welcome
    Scraper.months
    list_months 
    start 
    end 
  end
  
  def welcome 
    puts ""
    puts "Welcome Constellation Information Seekers!"
    puts ""
  end 
  
  def list_months 
    Months.all.each.with_index(1) do |month, index|
      puts "#{index}. #{month.name}"
    end 
  end 
  
  def list_constellations(month)
    Scraper.constellations(month)
    Constellations.all.each.with_index(1) do |constellation, index|
      puts "#{index}. #{constellation.official_name}"
    end 
  end 


  def start
    puts ""
    puts "Which months constellations are you interested in learning about?"
    puts ""  
    puts "If you would like to exit please type 'exit'"
    puts ""
    input = gets.chomp 
    if input != "exit"
      new_input = (input.to_i) -1
      if new_input >= 0 && new_input <=11
        month = Months.all[new_input]
        list_constellations(month)
        puts "Which constellations are you interested in learning about?"
      else 
        puts "Not a valid choice plus choose from list"
        start
      end 
    elsif input == "exit"
      exit 
  end 
end 

