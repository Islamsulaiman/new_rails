class User < ApplicationRecord
    validates :name, :dob, :email, :phone_number, presence: true

    validates :email, format: { with: URI::Email::EMAIL_REGEXP, message: "is not a valid email address" }
    validates :email, uniqueness: true
end
