require 'open-uri'
require 'nokogiri'
require 'pry'


class The_Keeper::Book
attr_accessor   :url, :name, :price
  @@all = []



  def self.all
      # Scrape woot and meh and then return deals based on that data
      self.scrape_book
    end

    def self.scrape_book
      book = []

      book << self.scrape_storyindexone
      book << self.scrape_storyindextwo

      book
    end

    def self.scrape_storyindexone
      doc = Nokogiri::HTML(open("http://books.toscrape.com"))

      book = doc.search("li.col-xs-6")
      book.map do |book|
      book_name = book.css("h3 a").text
      book_price = book.css("p.price_color").text


     end
    end

    def self.scrape_storyindextwo
      doc = Nokogiri::HTML(open("https://meh.com"))

      book = self.new
      book.name = doc.search("section.features h2").text.strip
      book.price = doc.search("button.buy-button").text.gsub("Buy it.", "").strip
      book.url = "https://meh.com"


     book
    end
  end
