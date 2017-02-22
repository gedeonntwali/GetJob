class Job < ApplicationRecord

  belongs_to :company

  has_many :applications


  has_many :job_categories
  has_many :categories, through: :job_categories
end
