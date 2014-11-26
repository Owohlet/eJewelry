class AddShopRefToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :shop, index: true
  end
end
