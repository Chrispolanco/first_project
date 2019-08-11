class Scraper 
  
  def month_list
    months = []
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
    list_month = doc.css('div#main-content-center a')
      list_month[0..11].each.with_index(1)  do |month, index| 
      months << "#{index}  #{month.text}"
      end
    puts months 
    
  end 

  
  def month_link
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
    month = doc.css('div#main-content-center a')[0].attribute('href').value
    html = ("http://www.seasky.org/constellations/#{month}")
  
  end 

  def constellations_list
    list_constellations = {}
    html = Nokogiri.HTML(open("#{month_link}")) 
      html.css('h3').each.with_index(1) do |common, index| list_constellations[":#{index}"] = "#{common.text}"
      end 
#      list_constellations.each do |x| 
#        if x != nil 
#      html.css('h5').each.with_index(1) do |official, index|
#        if list_constellations
#          x << "#{official.text}"
#          end
#       end 
#      end 
    puts list_constellations
        #{|constellation|
        #list_constellations << html.css('h3').text
        #list_constellations << html.css('h5').text} 
    
    
    #puts official_name = html.css('h3 a')[num].text 
    #puts common_name = html.css('h5')[num].text
    
  end
  
  
  #def constellations[num]
  #  html = Nokogiri.HTML(open("#{month_link}")) 
  #  puts official_name = html.css('h3 a')[num].text 
  #  puts common_name = html.css('h5')[num].text
    
  #end 

end 

    test = Scraper.new
    binding.pry 
