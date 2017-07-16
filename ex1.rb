require 'rubygems'

require 'nokogiri'

require 'open-uri'


def get_all_the_urls_of_val_doise_townhalls()

	page = Nokogiri::HTML(open("http://www.annuaire-des-mairies.com/val-d-oise.html"))

	
	news_links = page.css("a.lientxt")

	news_links.each  { |fin_url_chaque_ville| 

		x = fin_url_chaque_ville['href']

		url_unique = "http://www.annuaire-des-mairies.com#{x}"

	get_the_email_of_a_townhal_from_its_webpage(url_unique)
		
	}

end

def get_the_email_of_a_townhal_from_its_webpage(value)

	page = Nokogiri::HTML(open(value))

	email = page.css(".style27 .Style22")

	puts email[5].text

end



get_all_the_urls_of_val_doise_townhalls()