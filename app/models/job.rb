class Job < ApplicationRecord


  has_many :applications

  belongs_to :user
  belongs_to :company

  belongs_to :category, optional: true


  
end
