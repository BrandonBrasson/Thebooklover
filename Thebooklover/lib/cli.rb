class The_Keeper::CLI


   def call
     The_Keeper::Book.scrape_storyindexone
    list_books
    menu
    goodbye
  end

      def list_books
    # here doc - "https://www.imdb.com/title/tt0078346/plotsummary?ref_=tt_stry_pl"
        puts "THE KEEPER OF TIME"
        @book = The_Keeper::Book.all
        @book.each.with_index(1) do |book, i|
         puts "#{i}.#{book.name} - #{book.price} - #{book.url}"
     end
   end



      def menu
        input = nil
        while input != "exit"
          puts "Superman is a 1978 superhero film directed by Richard Donner and based on the DC Comics:"
          input = gets.strip.downcase

      if input.to_i > 0
        the_book = @book[input.to_i-1]
        puts " #{the_book.name} - #{the_book.price} - #{the_book.url}"
      elsif input == "list"
        list_books
      else
        puts "Not sure what you want, type list or exit."
      end
    end
end

  def goodbye
    puts "goodbye have a superday"
  end
end

