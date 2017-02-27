class User < ApplicationRecord

  has_secure_password

  belongs_to :role, optional: true
  has_many :applications

end
