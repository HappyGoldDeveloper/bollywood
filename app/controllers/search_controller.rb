class SearchController < ApplicationController

    def index
        
    end

    def results
        @movies = Movie.where('title LIKE ?', "%#{params[:q]}%")
    end
end
