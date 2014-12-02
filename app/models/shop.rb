class Shop < ActiveRecord::Base
  searchkick
  has_many :products, :dependent => :destroy

  belongs_to :user

end
