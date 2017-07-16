#! /usr/bin/env ruby


require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
#ex1
def get_the_email_of_a_townhal_from_its_webpage
page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/95/vaureal.html'))
		
	email = page.css('.style27 .Style22')

	puts email[5].text
end

#get_the_email_of_a_townhal_from_its_webpage()


#ex2
def get_all_the_urls_of_val_doise_townhalls
page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
		
	url = page.css('a.lientxt').each do |el|

	puts el["href"]
end
end
#get_all_the_urls_of_val_doise_townhalls()




#Etape finale
nom_email{ 
	:name => "nomDeLaVille", 
	:email=> "ville@machin.chose" 
}



def get_all_the_urls_and_email_of_val_doise_townhalls
page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
		
	url = page.css('a.lientxt').each do |el|

	puts el["href"]
end
end