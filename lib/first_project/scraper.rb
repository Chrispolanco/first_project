class Scraper
  
  def self.months
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
    calendar = doc.css('div#main-content-center a')[0..11].each do |month|
      name = month.text 
      url = month.attr("href")
      new_month= Months.new(name, url)
      new_month.save 
    end
  end 

  def self.constellations_list
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
  
  
  def self.constellations(num)
    html = Nokogiri.HTML(open("#{month_link}"))
    constellation = html.css('div#mainContent h3 a')[num].attribute('href').value
    new_html = ("http://www.seasky.org/constellations/#{constellation}")
  end 

end 
