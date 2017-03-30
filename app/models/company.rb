class Company < ApplicationRecord

  has_many :jobs

  belongs_to :user, optional: true

  validates :name, presence: {message:"You must enter a company name"}
  validates :address, presence: {message:"You must enter an address for your company"}
  
end
