require 'open-uri'
require 'nokogiri'
require 'pry'

class The_Keeper::Book
attr_accessor :url, :name, :price

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
   @@all
  end

    def self.scrape_storyindexone
      doc = Nokogiri::HTML(open("http://books.toscrape.com/catalogue/category/books/travel_2/index.html"))
      list_doc = doc.css("li.col-xs-6")
      list_doc.each do |element|
          book = self.new
          book.name = element.css("h3 a").text
          book.price = element.css("p.price_color").text
          book.url = ("http://books.toscrape.com/catalogue/category/books/travel_2/index.html")
      end
    end

 end
