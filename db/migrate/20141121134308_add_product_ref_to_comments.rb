class AddProductRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :product, index: true
  end
end
