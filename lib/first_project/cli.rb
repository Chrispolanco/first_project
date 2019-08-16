#Our CLI Controller (Dealing with inputs)
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


  def start
    puts ""
    puts "Which months constellations are you interested in learning about?"
    puts ""  
    puts "If you would like to exit please type 'exit'"
    puts ""
    input = gets.chomp 
    if input != "exit"
      if input.to_i-1 >= 0 && input.to_i-1 <=11
        puts "yes"
        #month = Months.all[input.to_i -1]
      else 
        puts "type 'exit' to leave or numbers 1 - 12 to choose month"
        list_months
        puts ""
      end 
    elsif input == "exit"
      exit 
  end 
end 

