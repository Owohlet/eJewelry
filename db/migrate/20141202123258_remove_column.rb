class RemoveColumn < ActiveRecord::Migration
 def change
  change_column :comments, :rating, :integer
end
end
