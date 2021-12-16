# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'nokogiri'
require 'open-uri'
# require 'pry'
require 'mechanize'

puts "🌱 Seeding!"
# WORKING SEED, JSUT MISSING THE PAGE CHANGES

# html = URI.open("https://www.audubon.org/bird-guide")


# el = doc.css("#main").css(".page-#{number}.views-row.columns.tiny-6.medium-4.large-3").css(".bird-card").css(".bird-card-caption")

# if Bird.all.length == 0
#   el.each do |e|
#     common_name = e.css(".common-name.custom-h4").text.strip
#     sci_name = e.css(".scientific-name").css("span").text

#     Bird.create(common_name: common_name, sci_name: "Latin: #{sci_name}")
#   end
# end
# el = doc.css(".view-content.row.space-bottom.double.bird-card-grid-container").css(".page-#{number}.views-row.columns.tiny-6.medium-4.large-3")
# # puts el


# html = URI.open("https://en.wikipedia.org/wiki/List_of_birds_of_North_America")
# doc = Nokogiri::HTML(html)
# link = doc.css("li")
# puts link[139..-118].length


mechanize = Mechanize.new
# page = mechanize.get("https://en.wikipedia.org/wiki/List_of_birds_of_North_America")
page = mechanize.get("https://en.wikipedia.org/wiki/List_of_birds_of_the_United_States")

# links = site.search("li")
# link = site.link_with(text: "American Ornithological Society")
# links = site.css('li')
# links= site.links_with(dom_class: "div-col")

# filted_links = links[0..-261]
# filted_links = links[222..300]
# puts filted_links.size



links = page.links.map{|link| link }
shrunken_links = links[222..-261]
bird_links = shrunken_links.select {|link| link.text != "edit"}
puts bird_links.size

# test_links = links[300..601]
# test_page = links[601].click


# puts test_page.images[0].src
# puts test_page.search("span.binomial").text
# puts test_page.search("h1.firstHeading").text


bird_links.each do |bird_link|
  new_page = bird_link.click
  common_name = new_page.search("h1.firstHeading").text
  sci_name = new_page.search("span.binomial").text
  bird_img = new_page.images[0].src

  Bird.create(common_name: common_name, sci_name: sci_name, image: bird_img)
end

User.create(username: 'sam', email: 'sambencivengo@gmail.com', password: '1', password_confirmation: '1')

puts "🌱 Seeding finished!"


