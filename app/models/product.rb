class Product < ActiveRecord::Base
  mount_uploader :image, ImUploader
end
