class CreateNavns < ActiveRecord::Migration
  def change
    create_table :navns do |t|
      t.string :username
      t.integer :height
      t.integer :weight
      t.string :location

      t.timestamps
    end
  end
end
