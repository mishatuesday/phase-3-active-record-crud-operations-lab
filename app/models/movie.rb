class Movie < ActiveRecord::Base
    def self.create_with_title (title)
        new_movie = Movie.new
        new_movie.title = title
        new_movie.save
    end
    def self.first_movie
        Movie.first
    end
    def self.last_movie
        Movie.last
    end
    def self.movie_count
        Movie.all.length
    end
    def self.find_movie_with_id(id)
        Movie.find(id)
    end
    def self.find_movie_with_attributes()
        #ActiveRecord is stupid
    end
    def self.find_movies_after_2002
        Movie.where("release_date >2002")
    end
    def update_with_attributes()
        #ActiveRecord is stupid
    end
    def self.update_all_titles(title)
        #Why the fuck would anyone do this??
    end
    def self.delete_by_id(id)
        Movie.find(id).destroy
    end
    def self.delete_all_movies
        Movie.destroy_all
        #this is trivial, why have it as an exercise?
    end
    #I'm full of complaints today
end