require 'httparty'
require 'open-uri'
require 'nokogiri'
require 'pry'
require "byebug"

class The_Keeper::Book
attr_accessor :url, :name, :price
  @@all = []



  #def self.all
      # Scrape scrape_storyindexone and storyindextwo and then return deals based on that data
    #  self.scrape_book
    #end

    #def self.scrape_book
    #  book = []

    #  book << self.scrape_storyindexone
      #book << self.scrape_storyindextwo

      #book
    #end




#def self.all

#  end



  def self.scrape_storyindexone
    url ='http://books.toscrape.com/catalogue/category/books/travel_2/index.html'
    unparsed_page = HTTparty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    book = Array.new
    book_listing = parsed_page.css('div.page_inner')
  binding.pry
    per_page = book_listing.count#11
    total = parsed_page.css('div.page_inner')
    book_listing.each.with_index(1) do |book_listing|


    byebug

  end


   end
