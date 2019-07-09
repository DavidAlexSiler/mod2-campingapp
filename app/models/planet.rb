class Planet < ApplicationRecord
    has_many :reservations
    has_many :users, through: :reservations
    has_many :reviews

    def my_reviews
        self.reviews.select do |review|
            review.planet.id = self.id  
        end 
    end 
end 