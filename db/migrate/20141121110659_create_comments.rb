class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
