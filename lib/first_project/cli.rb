class CLI
  
  def run 
    welcome
    Scraper.months
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
    list = []
    puts "Which constellations are you interested in learning about?"
    Constellations.all.each.with_index(1) do |constellation, index|
      puts "#{index}. #{constellation.official_name}"
      list << "#{index}"
    end 
    inner_input = gets.chomp 
    if inner_input!= "exit"
      new_inner_input = inner_input.to_i 
        if new_inner_input <= list.length
          final_input = (new_inner_input.to_i)-1
          constellation = Constellations.all[final_input]
          print_details(constellation)
        else 
          puts "Enter number from list or exit"
          list_constellations(month)
        end 
    elsif inner_input == "exit" 
      exit
    end 
  end 
  
def print_details(constellation)
  Scraper.details(constellation)
  puts "#{constellation.pronunciation}"
end 

  def start
    list_months
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
        Scraper.constellations(month)
        list_constellations(month)
      else 
        puts "Not a valid choice plus choose from list"
        start
      end 
    elsif input == "exit"
      exit 
  end 
end 

