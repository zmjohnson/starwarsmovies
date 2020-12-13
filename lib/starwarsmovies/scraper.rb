class SWM::Scraper

    def self.scrape_movies
      url = "---"
      doc = Nokogiri::HTML(open(url))
      movies = doc.css("#custom_html-8 li")
      movies.each do |d|
          ref = d.css("a").attr("href").text.strip
          name = d.css("span.list-name").text.strip
          SWM::Planets.new(name, ref)
      end
    end
  end