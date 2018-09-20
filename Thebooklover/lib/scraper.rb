
require 'open-uri'
require 'nokogiri'
require 'pry'


class The_Keeper::Book
attr_accessor   :url, :name, :price
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

     def self.scrape_storyindextwo
       doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
       list_doc = doc.css("li") #get a selector that will give you the data in the form of Nokogiri objects
       list_doc.collect.with_index(1) do |element, i|
         binding.pry
           book = self.new
           book.name = element.css('h3 a').attribute.values.first.value.gsub('../','')
           book.price = element.css(".price_color").text
           book.url = "../../../full-moon-over-noahs-ark-an-odyssey-to-mount-ararat-and-beyond_811/index.html"

             book
          end
        end



  def self.scrape_storyindexthree
    doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
    list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
    list_doc.collect.with_index(1) do |element, i|
      binding.pry
        book = self.new
        book.name = element.css('h3 a').attribute.values.first.value.gsub('../','')
        book.price = element.css(".price_color").text
        book.url = "../../../see-america-a-celebration-of-our-national-parks-treasured-sites_732/index.html"

          book
       end
     end



     def self.scrape_storyindexfour
       doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
       list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
       list_doc.collect.with_index(1) do |element, i|
         binding.pry
           book = self.new
           book.name = element.css('h3 a').attribute.values.first.value.gsub('../','')
           book.price = element.css(".price_color").text
           book.url = "../../../vagabonding-an-uncommon-guide-to-the-art-of-long-term-world-travel_552/index.html"

             book
          end
        end


        def self.scrape_storyindexfive
          doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
          list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
          list_doc.collect.with_index(1) do |element, i|
            binding.pry
              book = self.new
              book.name = element.css('h3 a').attribute.values.first.value.gsub('../','')
              book.price = element.css(".price_color").text
              book.url = "../../../under-the-tuscan-sun_504/index.html"

                book
             end
           end


           def self.scrape_storyindexsix
             doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
             list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
             list_doc.collect.with_index(1) do |element, i|
               binding.pry
                 book = self.new
                 book.name = element.css('h3 a').attribute.values.first.value.gsub('../','')
                 book.price = element.css(".price_color").text
                 book.url = "../../../a-summer-in-europe_458/index.html"

                   book
                end
              end


              def self.scrape_storyindexseven
                doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
                list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
                list_doc.collect.with_index(1) do |element, i|
                  binding.pry
                    book = self.new
                    book.name = element.css('h3 a').attribute.values.first.value.gsub('../','')
                    book.price = element.css(".price_color").text
                    book.url = "../../../a-year-in-provence-provence-1_421/index.html"

                      book
                   end
                 end

              def self.scrape_storyindexeight
                doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
                list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
                list_doc.collect.with_index(1) do |element, i|
                  binding.pry
                    book = self.new
                    book.name = element.css('h3 a').attribute.values.first.value.gsub('../','')
                    book.price = element.css(".price_color").text
                    book.url = "../../../the-road-to-little-dribbling-adventures-of-an-american-in-britain-notes-from-a-small-island-2_277/index.html"

                      book
                   end
                 end

                 def self.scrape_storyindexnine
                   doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
                   list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
                   list_doc.collect.with_index(1) do |element, i|
                     binding.pry
                       book = self.new
                       book.name = element.css('h3 a').attribute.values.first.value.gsub('../','')
                       book.price = element.css(".price_color").text
                       book.url = "../../../neither-here-nor-there-travels-in-europe_198/index.html"

                         book
                      end
                    end

                    def self.scrape_storyindexeten
                      doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
                      list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
                      list_doc.collect.with_index(1) do |element, i|
                        binding.pry
                          book = self.new
                          book.name = element.css('h3 a').attribute.values.first.value.gsub('../','')
                          book.price = element.css(".price_color").text
                          book.url = "../../../1000-places-to-see-before-you-die_1/index.html"

                            book
                         end
                       end

                       def self.scrape_storyindexeleven
                         doc = Nokogiri::HTML(open('http://books.toscrape.com/catalogue/category/books/travel_2/index.html'))
                         list_doc = doc.css("ol") #get a selector that will give you the data in the form of Nokogiri objects
                         list_doc.collect.with_index(1) do |element, i|
                           binding.pry
                             book = self.new
                             book.name = element.css('h3 a').attribute.values.first.value.gsub('../','')
                             book.price = element.css(".price_color").text
                             book.url = "../../../full-moon-over-noahs-ark-an-odyssey-to-mount-ararat-and-beyond_811/index.html"

                               book
                            end
                          end





  #The_Keeper::Book.scrape_storyoneindexone
end
