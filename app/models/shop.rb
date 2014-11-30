class Shop < ActiveRecord::Base
  searchkick
  has_many :products

  belongs_to :user

end
