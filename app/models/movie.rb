class Movie < ApplicationRecord
  belongs_to :image
  has_many :movie_actors
  has_many :actors , through: :movie_actors
  has_many :movie_genres
  has_many :genres , through: :movie_genres
end
