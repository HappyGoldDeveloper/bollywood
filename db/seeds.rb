require 'json'


file = File.read "/Users/arshdeepsinghsangha/RailsProject/Bollywood/movies.json"
data_set = JSON.parse(file)



MovieActor.delete_all
MovieGenre.delete_all
Actor.delete_all
Genre.delete_all
Movie.delete_all
Image.delete_all


data_set.each do |data|

    image_data = Image.create(name: data["posterurl"])


    movie_made = Movie.create(title: data["title"],year: data["year"],release_date: data["releaseDate"],imdb: data["imdbRating"],story_line: data["storyline"] , image: image_data)

    data["actors"].each do |a|

        actor_made = Actor.find_or_create_by(name: a) 

        MovieActor.create(actor: actor_made , movie: movie_made)
    end

    data["genres"].each do |g|

        genre_made = Genre.find_or_create_by(name: g)

        MovieGenre.create(genre: genre_made , movie: movie_made)

    end

end
