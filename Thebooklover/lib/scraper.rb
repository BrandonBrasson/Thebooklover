
require 'open-uri'
require 'nokogiri'
require 'pry'


class The_Keeper::Book
attr_accessor :description, :url, :name, :price
  @@all = []


  def initialize(book)
    @book = book
  end

  def initialize(time)
    @time = time
  end

    def url=(book)
     @book = scrape_storyone
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

    @@all
  end

  def self.scrape_storyone
    doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
    list_doc = doc.css("ol.row li") #get a that will give you the data in the form of Nokogiri objects
    list_doc.collect.with_index(1) do |element, i|
      binding.pry
        book = self.new
        book.name = element.css("h3 a").text
        book.price = element.css(".price_color").text
      #movie.plot = doc.seach "<a href="../../../its-only-the-himalayas_981/index.html" title="It's Only the Himalayas">It's Only the Himalayas</a>"
      #movie.url = "https://www.imdb.com/title/tt0078346/"

          book
       end
     end

  #def self.scrape_imdb
  #  doc = Nokogiri::HTML(open("https://www.imdb.com/find?q=superman&s=tt&exact=true&ref_=fn_al_tt_ex"))
  #  list_doc = doc.css("div.findSection")
  #  list_doc.each.with_index do |element, i|
  #    movie = self.new
  #    movie.name = list_doc.css(".result_text a")[i].text
    #binding.pry
      #movie.plot = doc.<span class="mw-headline" id="Plot">Plot</span>
      #movie.url = "https://www.imdb.com/title/tt0078346/fullcredits?ref_=tt_cl_sm#cast"
#      movie.superhero = true

#      movie
#    end
#  end

  The_Keeper::Book.scrape_storyone
end
