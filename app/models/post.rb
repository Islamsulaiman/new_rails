class Post < ApplicationRecord
    validates :title, :content, presence:true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address"}, uniqueness:true
end
