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
    if input == "exit"
      exit 
    elsif input== "1"||"2"||"3"||"4"||"5"||"6"||"7"||"8"||"9"||"10"||"11"||"12"
      month = Months.all[input.to_i -1]
    else 
      list_months
    else 
    end
  end 
end 

