class Job < ApplicationRecord

  belongs_to :company, optional: true

  has_many :applications

  belongs_to :category, optional: true


  
end
