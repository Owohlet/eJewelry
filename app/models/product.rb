class Product < ActiveRecord::Base
  searchkick
  has_many :comments

  belongs_to :shop

  mount_uploader :image, ImUploader
end
