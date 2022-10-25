class User < ApplicationRecord
    has_many :user_restaurants
    has_many :restaurants, through: :user_restaurants

    # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
    # validates :email, uniqueness: true
    # validates :password_digest, length: { in: 11..17}
    # validates :email, :password_digest, presence: true
end
