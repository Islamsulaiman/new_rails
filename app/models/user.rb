class User < ApplicationRecord
    validates :name, :DOB, :email, :phone_number, presence:true
end
