#! /usr/bin/env ruby


require 'rubygems'
require 'nokogiri'
require 'open-uri'



def get_all_the_crypto_currencies()

	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))



	money = page.css(".no-wrap.currency-name a")
	money.each { |currency_name| 

		x = currency_name.text

		name_currency = "Nom de la cryptomonnaie: #{x}" # écrit l'url complète de chaque page de mairie avec le préfixe complet http://www. etc

		puts name_currency

		get_all_the_crypto_currencies_variation(name_currency)
		
	}

end

def get_all_the_crypto_currencies_variation(currency_value)

	page = Nokogiri::HTML(open(currency_value))

	variation = page.css("#quote_price")

	cours = "Son cours actuel: #{variation.text}"

	puts cours

end


get_all_the_crypto_currencies()
