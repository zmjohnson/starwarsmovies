class Starwarsmovies::CLI

    def call
      list_movies
      menu
      show_movie_details
      movie_end
    end
    
    def list_movies
      puts "Welcome to my Star Wars CLI! In this CLI we'll learn a bit about the movies set in the Star Wars Universe. Here are the movies listed in chronological order:"
      @planets = Starwarsmovies::Movies.all
      @planets.each.with_index(1) do |movie, index|
          puts "#{index}. #{movie.name}"
    end
    
    def menu
      puts "Please enter the number of the number of the movie you would like to learn more about it:"
      show_movie_details
    end
    
      def show_movies_details
        input = gets.strip.to_i
        if input == 1
          url = "----"
          doc = Nokogiri::HTML(open(url))
              li = doc.css("div.hero h2").text.strip
                puts "_________The Phantom Menace_______________________"
                puts ""
                puts "#{li}"
                puts ""
          movie_end
        elsif input == 2
          url = "----"
          doc = Nokogiri::HTML(open(url))
              li = doc.css("div.hero h2").text.strip
                puts "_________Attack Of The Clones___________"
                puts ""
                puts "#{li}"
                puts ""
          movie_end
        elsif input == 3
          url = "-----"
          doc = Nokogiri::HTML(open(url))
            li = doc.css("div.hero h2").text.strip
                puts "_________The Clone Wars___________"
                puts ""
                puts "#{li}"
                puts ""
            movie_end
        elsif input == 4
          url = "----"
          doc = Nokogiri::HTML(open(url))
            li = doc.css("div.hero h2").text.strip
              puts "_________Revenge Of The Sith___________"
              puts ""
              puts "#{li}"
              puts ""
            movie_end
        elsif input == 5
          url = "----"
          doc = Nokogiri::HTML(open(url))
            li = doc.css("div.hero h2").text.strip
                puts "_________Solo___________"
                puts ""
                puts "#{li}"
                puts ""
            movie_end
        elsif input == 6
          url = "______"
          doc = Nokogiri::HTML(open(url))
            li = doc.css("div.hero h2").text.strip
                puts "_________Rogue One___________"
                puts ""
                puts "#{li}"
                puts ""
            movie_end
        elsif input == 7
          url = "----"
          doc = Nokogiri::HTML(open(url))
            li = doc.css("div.hero h2").text.strip
              puts "_________A New Hope___________"
              puts ""
              puts "#{li}"
              puts ""
          movie_end
        elsif input == 8
          url = "-"
          doc = Nokogiri::HTML(open(url))
            li = doc.css("div.hero h2").text.strip
          puts "_________The Empire Strikes Back___________"
          puts ""
          puts "#{li}"
          puts ""
          movie_end
        elsif input == 9
            url = "-"
            doc = Nokogiri::HTML(open(url))
              li = doc.css("div.hero h2").text.strip
            puts "_________Return Of The Jedi___________"
            puts ""
            puts "#{li}"
            puts ""
            movie_end
        elsif input == 10
            url = "-"
            doc = Nokogiri::HTML(open(url))
              li = doc.css("div.hero h2").text.strip
            puts "_________The Force Awakens___________"
            puts ""
            puts "#{li}"
            puts ""
            movie_end
        elsif input == 11
            url = "-"
            doc = Nokogiri::HTML(open(url))
              li = doc.css("div.hero h2").text.strip
            puts "_________The Last Jedi___________"
            puts ""
            puts "#{li}"
            puts ""
            movie_end
        elsif input == 12
            url = "-"
            doc = Nokogiri::HTML(open(url))
              li = doc.css("div.hero h2").text.strip
            puts "_________The Rise Of Skywalker___________"
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