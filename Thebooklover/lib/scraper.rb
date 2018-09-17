
require 'open-uri'
require 'nokogiri'
require 'pry'


class The_Keeper::Book
attr_accessor :description, :url, :name, :price
  @@all = []


  def initialize(book)
    @book = book
  end


    def url=(book)
     @book = scrape_storyoneindexone
    end







def self.all

@@all = []

  end

  def self.scrape_storyindexone
    doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
    list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
    list_doc.collect.with_index(1) do |element, i|
        book = self.new
        book.name = element.css("h3 a").text
        book.price = element.css(".price_color").text
        book.url = http://books.toscrape.com/catalogue/category/books/travel_2/index.html

          book
       end
     end

     def self.scrape_storyindexone
       doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
       list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
       list_doc.collect.with_index(1) do |element, i|
         #binding.pry
           book = self.new
           book.name = element.css('a').attribute.values.first.value.gsub('../','')
           book.price = element.css(".price_color").text
           book.url = http://books.toscrape.com/catalogue/category/books/travel_2/index.html

             book
          end
        end












  #The_Keeper::Book.scrape_storyoneindexone
end


