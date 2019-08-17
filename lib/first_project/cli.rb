class CLI
  
  def run 
    puts ""
    puts "Welcome Constellation Information Seekers!"
    puts ""
    Scraper.months
    list_months 
    start 
    end 
  end

  
  def list_months 
    Months.all.each.with_index(1) do |month, index|
      puts "#{index}. #{month.name}"
    end 
  end 
  
  def list_constellations
    Constellations.all.with_index(1) do |constellation, index|
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
      new_input = input.to_i -1
      if new_input >= 0 && new_input <=11
        month = Months.all[new_input]
        Scraper.constellations(month)
        self.list_constellations(month)
      else 
        puts "Not a valid choice plus choose from list"
        list_months
      end 
    elsif input == "exit"
      exit 
  end 
end 

