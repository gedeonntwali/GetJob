class Job < ApplicationRecord


  has_many :applications

  belongs_to :user
  belongs_to :company, optional: true
  

  belongs_to :category, optional: true

  validates :title, presence: {message:"You must enter a job title"}
  validates :email, presence: {message:"You must enter an email to receive applications"}
  validates :deadline, presence: {message:"You must enter a deadline for your job"}
  


  
end
