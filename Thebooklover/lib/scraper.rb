require 'open-uri'
require 'nokogiri'
require 'pry'


class The_Keeper::Book
attr_accessor   :url, :name, :price
  @@all = []



  def self.all
      # Scrape storyindexone and storyindextwo and then return deals based on that data
      self.scrape_book
    end

    def self.scrape_book
      book = []

      book << self.scrape_storyindexone
      #book << self.scrape_storyindextwo

      book
    end

    def self.scrape_storyindexone

    #  book = doc.search("li.col-xs-6")
      #book.map do |book|
      #book_name = doc.search("h3 a").text
    #  book_price = doc.search("p.price_color").text



      doc = Nokogiri::HTML(open("http://books.toscrape.com"))

      book = self.new
      book.name = doc.search(" h3 a").text.strip
      book.price = doc.search("p.price_color").text.gsub("Buy it.", "").strip
      book.url = ("http://books.toscrape.com/catalogue/category/books/travel_2/index.html")


     book
    end
  end
