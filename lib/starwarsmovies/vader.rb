class Starwarsmovies::Movies
    attr_accessor :name, :ref
    @@all = []
  
    def initialize(name, ref)
      @name = name
      @ref = ref
      @movies = []
      save
    end
  
    def self.all
      SWM::Scraper.scrape_movies if @@all.empty?
      @@all
    end
  
    def save
      @@all << self
    end
  end