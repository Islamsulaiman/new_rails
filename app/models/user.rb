class User < ApplicationRecord
  validates :name, :dob, :email, :phone_number, presence: true
end
