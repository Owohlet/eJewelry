class ChangeColumnComment < ActiveRecord::Migration
  def change
    change_column :comments, :rating, :integer, default: 0
  end
end