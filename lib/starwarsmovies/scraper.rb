class Starwarsmovies::Scraper

  def self.scrape_movies
    url = "https://starwarscanontimeline.com/movie/"
    doc = Nokogiri::HTML(open(url))
    movies = doc.css("div.card-content")
    movies.each do |d|
        ref = d.css("a").attr("href").text.strip
        name = d.css("h3.entry-title.title.is-uppercase").text.strip
        Starwarsmovies::Movies.new(name, ref)
    end
  end
end