class User < ApplicationRecord
    validates :name, :DOB, :email, :phone_number, :address, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
    validates :email, uniqueness: true
  end
  