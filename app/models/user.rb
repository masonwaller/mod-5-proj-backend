class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :beaches, through: :reviews
    validates :username, uniqueness: { case_sensitive: false }
end
