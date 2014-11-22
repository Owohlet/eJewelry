class Product < ActiveRecord::Base
  has_many :comments

  mount_uploader :image, ImUploader
end
