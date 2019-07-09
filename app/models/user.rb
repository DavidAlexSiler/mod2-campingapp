class User < ApplicationRecord
    has_many :reservations
    has_many :planets, through: :reservations
    has_many :reviews

    has_secure_password

    validates :username, presence: true, uniqueness: true

    def my_reviews
        self.reviews.select do |review|
            review.user.id = self.id  
        end 
    end 
    
end