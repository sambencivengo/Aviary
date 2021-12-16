# require 'nokogiri'
# require 'open-uri'
# require 'pry'

# class Scraper
#   def scrape_bird_common_name
#     birds_url = "https://birdsoftheworld.org/bow/species?regionCode=na"
  
#     html = URI.open(birds_url)
  
#     doc = Nokogiri::HTML(html)

#     # common_names = doc.css("div.TaxonomyTree-card-caption")
#   end

# end

# doc.at('div.TaxonomyTree-card-caption')

# scrape = Scraper.new
# binding.pry
# # scrape.scrape_bird_common_name