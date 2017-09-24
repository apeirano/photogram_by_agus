class Photo < ApplicationRecord
  mount_uploader :image_upload, ImageUploadUploader

  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :likes,
             :source => :user

  # Validations

end
