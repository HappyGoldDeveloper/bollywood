class SearchController < ApplicationController

    def index
        
    end

    def results
        if params[:query_genre][:genre_id].empty?
            @movies = Movie.where('title LIKE ?', "%#{params[:q]}%")
        else
            genre = Genre.find(params[:query_genre][:genre_id])
            @movies = genre.movies.where('title LIKE ?', "%#{params[:q]}%")
        end
    end
end
