require 'carrierwave/orm/activerecord'

class Application < ApplicationRecord

  mount_uploader :resume, ResumeUploader
  
  belongs_to :job, optional: true
  belongs_to :user, optional: true

  validates :first_name, presence: {message:"You must enter your first name"}
  validates :last_name, presence: {message:"You must enter your last name"}
  validates :resume, presence: {message:"You must upload your resume"}
  validates :phone_number, presence: {message:"You must enter your phone number"}
  validates :email, presence: {message:"You must enter your personal email"}

end
