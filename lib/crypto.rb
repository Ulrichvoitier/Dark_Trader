require 'rubygems'
require 'nokogiri'
require 'open-uri'

# def scrapeur

@page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
puts @page.class

# methode devise
devise = @page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--hide-sm cmc-table__cell--sort-by__symbol"]')
devise_array = []
devise.each do |element|
        devise_array << element.text
    end
# puts devise_array

# methode valeur
valeur = @page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]')
valeur_array = []
valeur.each do |element|
    valeur_array << element.text.delete('$')
    end
# puts valeur_array

# hash = Hash[devise_array.zip (valeur_array).to_s]
# hash.each do |key, value|
# puts key + ':' + valeur
# end


    final_result = Hash[devise_array.zip (valeur_array)]
    
    puts final_result
