class The_Keeper::Book
attr_accessor :url, :name, :price
  @@all = []

def initialize
  @@all << self
end

def self.scrape_storyindexone
    @@all
  end

def self.all
 @@all
end

end
