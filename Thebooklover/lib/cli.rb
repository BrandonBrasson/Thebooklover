class The_Keeper::CLI


   def call
    The_Keeper::Book.scrape_storyindexone
    The_Keeper::Scraper.scrape_storyindexone
    list_storybook
    menu
    goodbye
  end

  def list_storybook
      puts "Type any number 1 to 11, type list to return to menu or exit"
      book = The_Keeper::Book.all
      book.each.with_index(1) do |book, i|
      puts "#{i}.#{book.name}"
    end
   end



    def menu
      input = nil
    while input != "exit"
      puts " type list of books to return or type exit"
      input = gets.strip.downcase

    if input.to_i > 0
      the_book = The_Keeper::Book.all[input.to_i-1]
      puts " #{the_book.name} - #{the_book.price} - #{the_book.url}"
    elsif input == "list"
      list_storybook
    elsif input == "exit"
      nil
    else
    puts "are you lost type?"
    end
  end
end

  def goodbye
    puts "goodbye friend"
  end
end
