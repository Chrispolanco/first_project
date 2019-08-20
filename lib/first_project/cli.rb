class CLI
  

  def run 
    welcome
    Scraper.months
    list_months
    start

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
        Constellations.all.clear
        month = Months.all[new_input]
        list_constellations(month)
      else 
        puts "Not a valid choice please option from the list"
        list_months
        puts ""
        start 
      end 
    elsif input == "exit"
      exit 
    end

  end  

  
  def list_constellations(month)
    Constellations.all.clear
    list = []
    Scraper.constellations(month)
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
          puts "Enter number from the above list or type 'exit' to exit"
          list_constellations(month)
        end 
    elsif inner_input == "exit" 
      exit
    end
    list.clear 
    sleep 4
    list_months
    start 

  end 
 
 
  def print_details(constellation)
    Scraper.details(constellation)
      puts ""
      puts " Pronunciation: #{constellation.pronunciation}"
      puts " Abbreviation: #{constellation.abbreviation}"
      puts " Genitive: #{constellation.genitive}"
      puts " Right Ascension:  #{constellation.right_ascension}"
      puts " Declination: #{constellation.declination}"
      puts " Area in Square Degrees:  #{constellation.area_in_square_degrees}"
      puts " Crosses Meridian:  #{constellation.crosses_meridian}"
      puts " Visible Between Latitudes: #{constellation.visible_between_latitudes}"
      puts ""
      puts "                    General Information                "
      puts ""
      puts " #{constellation.gen_info_one}"
      puts ""
      puts "#{constellation.gen_info_two}"
      puts ""
      puts "#{constellation.gen_info_three}"
      puts ""
      puts "#{constellation.gen_info_four}"
      puts ""

  end 

end 
