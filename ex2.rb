#! /usr/bin/env ruby


require 'rubygems'

require 'nokogiri'

require 'open-uri'

require 'pp'

  



def get_all_the_crypto_currencies()

	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

	array = Hash.new

	compteur = -1




	currency_name = page.css("td.no-wrap.currency-name > a")

	currency_value = page.css("td:nth-child(5) > a")





	currency_name.each do |element|

		compteur += 1

		key = element.text

		value = currency_value[compteur].text

		array[key] = value

    end


    pp array

end



get_all_the_crypto_currencies()