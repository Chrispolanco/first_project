class Scraper
  
  STANDARD_URL = "http://www.seasky.org/constellations/"
  INNER_URL = "http://www.seasky.org/constellations/"
  
  def self.months
    doc = Nokogiri::HTML(open("http://www.seasky.org/constellations/constellations.html"))
    calendar = doc.css('div#main-content-center a')[0..11].each do |month|
      name = month.text 
      url = month.attr("href")
      new_month= Months.new(name, url)
      new_month.save 
    end
  end 


  def self.constellations(new_month)
    doc = Nokogiri::HTML(open(STANDARD_URL + new_month.url))
      months_constellations = doc.css('h3').each do |single|
      official_name = single.text
      url = single.css("a").attr("href").value
      single_constellation = Constellations.new(official_name, url)
      single_constellation.save
    end 
  end 
      

  def self.details(single_constellation)
    doc = Nokogiri::HTML(open(INNER_URL + single_constellation.url))
    single_constellation.pronunciation= doc.css('div#con-text text()')[8].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    single_constellation.abbreviation= doc.css('div#con-text text()')[11].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    single_constellation.genitive= doc.css('div#con-text text()')[13].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    single_constellation.right_ascension= doc.css('div#con-text text()')[16].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    single_constellation.declination= doc.css('div#con-text text()')[18].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    single_constellation.area_in_square_degrees= doc.css('div#con-text text()')[21].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    single_constellation.crosses_meridian= doc.css('div#con-text text()')[24].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    single_constellation.visible_between_latitudes= doc.css('div#con-text text()')[27].text.strip.reverse.chop!.chop!.chop!.chop!.chop!.reverse
    single_constellation.gen_info_one= general_information = doc.css('div#main-content-center p')[1].text
    single_constellation.gen_info_two= general_information = doc.css('div#main-content-center p')[2].text
    single_constellation.gen_info_three= general_information = doc.css('div#main-content-center p')[3].text
    single_constellation.gen_info_four= general_information = doc.css('div#main-content-center p')[4].text

  end

  
end



