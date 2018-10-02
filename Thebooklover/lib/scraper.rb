require 'open-uri'
require 'nokogiri'
require 'pry'


class The_Keeper::Book
attr_accessor   :url, :name, :price

  @@all = []

  def initialize
    @@all << self #self == Book instance
  end

  def self.all
      # Scrape storyindexone and storyindextwo and then return deals based on that data
    @@all
    #binding.pry
  end

    #def self.scrape_book
    #  book = []
#
    #  book << self.scrape_storyindexone
#   #   book << self.scrape_storyindextwo

    #  book
    #end

    def self.scrape_storyindexone

    #  book = doc.search("li.col-xs-6")
      #book.map do |book|
      #book_name = doc.search("h3 a").text
    #  book_price = doc.search("p.price_color").text



      doc = Nokogiri::HTML(open("http://books.toscrape.com/catalogue/category/books/travel_2/index.html"))
      list_doc = doc.css("li.col-xs-6")
      list_doc.each do |element|
        #binding.pry
        book = self.new
        book.name = element.css("h3 a").text
        book.price = element.css("p.price_color").text
        # book.url = ("http://books.toscrape.com/catalogue/category/books/travel_2/index.html")
      end
     #book
    end
  end
