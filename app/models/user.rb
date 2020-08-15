class User < ApplicationRecord
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :username, :email, :password, presence: { message: "Fields cant be left blank"}
  validates :email, :username, uniqueness: { message: 'is already taken' } 
  
end
