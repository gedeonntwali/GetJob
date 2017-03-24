require 'carrierwave/orm/activerecord'

class Application < ApplicationRecord

  mount_uploader :resume, ResumeUploader
  
  belongs_to :job, optional: true
  belongs_to :user, optional: true
end
