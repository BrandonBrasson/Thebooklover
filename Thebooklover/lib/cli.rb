class The_Keeper::CLI


   def call
     binding.pry
     The_Keeper::Book.scrape_storyindexone
    list_storybook
    menu
    goodbye
  end

      def list_storybook
    # here doc - "https://www.imdb.com/title/tt0078346/plotsummary?ref_=tt_stry_pl"
        puts "THE KEEPER OF TIME"
        @book = The_Keeper::Book.all
        @book.each.with_index(1) do |book, i|
         puts "#{i}.#{book.name} "
     end
   end



      def menu
        input = nil
        while input != "exit"
          puts "list of data"
          input = gets.strip.downcase

      if input.to_i > 0
        the_book = @book[input.to_i-1]
        puts " #{the_book.name} - #{the_book.price} - #{the_book.url}"
      elsif input == "list"
        list_storybook
      else
        puts "Not sure what you want, type list or exit."
      end
    end
end

  def goodbye
    puts "goodbye"
  end
end
