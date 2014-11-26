class Product < ActiveRecord::Base
  has_many :comments

  belongs_to :shop

  mount_uploader :image, ImUploader
end
