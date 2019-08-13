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
    month = doc.css('div#main-content-center a')[11].attribute('href').value
    html = ("http://www.seasky.org/constellations/#{month}")
  
  end 

  def constellations_list
    main = []
    list_h3 = []
    list_h5 = []
    html = Nokogiri.HTML(open("#{month_link}")) 
      html.css('h3').each.with_index(1) do |official, index|
        list_h3 << "#{index}  #{official.text}"
      end 
      html.css('h5').each do |common|
        list_h5 << "#{common.text}" 
      end
    list_h3.zip(list_h5).each do |h3, h5|
      h3
      h5
    end   
  end
  
  
  def constellations(num)
    html = Nokogiri.HTML(open("#{month_link}"))
    constellation = html.css('div#mainContent h3 a')[num].attribute('href').value
    new_html = ("http://www.seasky.org/constellations/#{constellation}")
  end 

end 
  test = Scraper.new
  binding.pry 
