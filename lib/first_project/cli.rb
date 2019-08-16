#Our CLI Controller (Dealing with inputs)
class CLI
  
  def run 
    puts ""
    puts "Welcome Constellation Information Seekers!"
    puts ""
    puts "Which months constellations are you interested in learning about?"
    puts "" 
   Scraper.months
   list_months 
  end
  
  def list_months 
    Months.all.each.with_index(1) do |month, index|
      puts "#{index}. #{month.name}"
    end 
  end 
  
end 

