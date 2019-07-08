class User < ApplicationRecord
    has_many :reservations
    has_many :planets, through: :reservations
end