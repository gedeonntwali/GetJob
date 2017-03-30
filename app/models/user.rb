class User < ApplicationRecord

  has_secure_password

  
  has_many :jobs

  has_many :companies

  validates :first_name, presence: {message:"You must enter your first name"}
  validates :last_name, presence: {message:"You must enter your last name"}


end
