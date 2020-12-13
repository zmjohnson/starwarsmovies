class Starwarsmovies::CLI

  def call
    list_movies
    menu
    show_movie_details
    movie_end
  end
  
  def list_movies
    puts "Welcome to my Star Wars CLI! In this CLI we'll learn a bit about the movies set in the Star Wars Universe. Here are the movies listed in chronological order:"
    @movies = Starwarsmovies::Movies.all
    @movies.each.with_index(1) do |movie, index|
        puts "#{index}. #{movie.name}"
  end
  
  def menu
    puts "Please enter the number of the number of the movie you would like to learn more about it:"
    show_movie_details
  end
  
    def show_movie_details
      input = gets.strip.to_i
      if input == 1
        url = "https://starwarscanontimeline.com/movie/episode-1/"
        doc = Nokogiri::HTML(open(url))
            li = doc.css("div.content.has-text-justified-mobile").text
              puts "_______________________The Phantom Menace_______________________"
              puts ""
              puts "#{li}"
              puts ""
        movie_end
      elsif input == 2
        url = "https://starwarscanontimeline.com/movie/episode-2/"
        doc = Nokogiri::HTML(open(url))
            li = doc.css("div.content.has-text-justified-mobile").text
              puts "_______________________Attack Of The Clones_______________________"
              puts ""
              puts "#{li}"
              puts ""
        movie_end
      elsif input == 3
        url = "https://starwarscanontimeline.com/movie/the-clone-wars/"
        doc = Nokogiri::HTML(open(url))
          li = doc.css("div.content.has-text-justified-mobile").text
              puts "_______________________The Clone Wars_______________________"
              puts ""
              puts "#{li}"
              puts ""
          movie_end
      elsif input == 4
        url = "https://starwarscanontimeline.com/movie/episode-3/"
        doc = Nokogiri::HTML(open(url))
          li = doc.css("div.content.has-text-justified-mobile").text
            puts "_______________________Revenge Of The Sith_______________________"
            puts ""
            puts "#{li}"
            puts ""
          movie_end
      elsif input == 5
        url = "https://starwarscanontimeline.com/movie/solo/"
        doc = Nokogiri::HTML(open(url))
          li = doc.css("div.content.has-text-justified-mobile").text
              puts "_______________________Solo_______________________"
              puts ""
              puts "#{li}"
              puts ""
          movie_end
      elsif input == 6
        url = "https://starwarscanontimeline.com/movie/rogue-one/"
        doc = Nokogiri::HTML(open(url))
          li = doc.css("div.content.has-text-justified-mobile").text
              puts "_______________________Rogue One_______________________"
              puts ""
              puts "#{li}"
              puts ""
          movie_end
      elsif input == 7
        url = "https://starwarscanontimeline.com/movie/episode-4/"
        doc = Nokogiri::HTML(open(url))
          li = doc.css("div.content.has-text-justified-mobile").text
            puts "_______________________A New Hope_______________________"
            puts ""
            puts "#{li}"
            puts ""
        movie_end
      elsif input == 8
        url = "https://starwarscanontimeline.com/movie/episode-5/"
        doc = Nokogiri::HTML(open(url))
          li = doc.css("div.content.has-text-justified-mobile").text
        puts "_______________________The Empire Strikes Back_______________________"
        puts ""
        puts "#{li}"
        puts ""
        movie_end
      elsif input == 9
          url = "https://starwarscanontimeline.com/movie/episode-6/"
          doc = Nokogiri::HTML(open(url))
            li = doc.css("div.content.has-text-justified-mobile").text
          puts "_______________________Return Of The Jedi_______________________"
          puts ""
          puts "#{li}"
          puts ""
          movie_end
      elsif input == 10
          url = "https://starwarscanontimeline.com/movie/episode-7/"
          doc = Nokogiri::HTML(open(url))
            li = doc.css("div.content.has-text-justified-mobile").text
          puts "_______________________The Force Awakens_______________________"
          puts ""
          puts "#{li}"
          puts ""
          movie_end
      elsif input == 11
          url = "https://starwarscanontimeline.com/movie/the-last-jedi/"
          doc = Nokogiri::HTML(open(url))
            li = doc.css("div.content.has-text-justified-mobile").text
          puts "_______________________The Last Jedi_______________________"
          puts ""
          puts "#{li}"
          puts ""
          movie_end
      elsif input == 12
          url = "https://starwarscanontimeline.com/movie/episode-9/"
          doc = Nokogiri::HTML(open(url))
            li = doc.css("div.content.has-text-justified-mobile").text
          puts "_______________________The Rise Of Skywalker_______________________"
          puts ""
          puts "#{li}"
          puts ""
          movie_end
      else input <=13 
        puts""
        puts"Please enter a number between 1 and 12"
        puts""
      show_movie_details
      end
    end
  end
  end
  def movie_end
    puts ""
    puts "Would you like to learn more about another movie (y/n)?"
    input = gets.strip.downcase
      if input == "y"
        puts ""
        call
      elsif input == "n"
        puts ""
        puts "Thank you for using my CLI!"
        exit
      else
        puts ""
        puts "Invalid response, restarting from the top!"
        puts ""
        call
      end
    end