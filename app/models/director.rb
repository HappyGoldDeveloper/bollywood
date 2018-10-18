class Director < ApplicationRecord
    has_many :movies
    paginates_per 15
end
