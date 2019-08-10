class Scraper 

  def get_page 
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
  end
  
  def month
    doc = get_page
    new_doc = doc.css('div#main-content-center a')
    months << new_doc[0..11].each.with_index(1)  do |month, index| 
      puts "#{index} #{month.text}"
    end 
  end 
  
  def constellations(num)
     html = Nokogiri.HTML(open("http://www.seasky.org/constellations/constellations-december.html")) 
    return official_name = html.css('h3 a')[num].text 
    return common_name = html.css('h5')[num].text
    
  end 

test = Scraper.new
binding.pry 

end 




