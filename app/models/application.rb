class Application < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  
  belongs_to :job, optional: true
  belongs_to :user, optional: true
end
