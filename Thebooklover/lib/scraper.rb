
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






  #@@all = [] # This will keep all Movie instances

  # 1. When instances are instantiated, add them to the @@all array/collection (@@all << self)
  # 2. Create a class reader (e.g. self.all) to allow reading the value of @@all from outside the Movie class


   #def self.superhero
   #scrape imdb and wikipedia then return user to based on the data.
 #  self.scrape_imdb
 #  binding.pry
 # end




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
        book.url = element.css('a').last.attributes.values.first.value.gsub('../','')

          book
       end
     end

     def self.scrape_storyindexone
       doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
       list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
       list_doc.collect.with_index() do |element, i|
         #binding.pry
           book = self.new
           book.name = element.css('a').attribute.values.first.value.gsub('../','')
           book.price = element.css(".price_color").text
           book.url = element.css('').last.attributes.values.first.value.gsub('../','')

             book
          end
        end












  #The_Keeper::Book.scrape_storyoneindexone
end


