class User < ApplicationRecord
    validates :name, :dob, :email, :phone_number, :address, presence: true
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "is not a valid email address" }
    validates :email, uniqueness: true
end
