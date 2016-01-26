class CreateNeelas < ActiveRecord::Migration
  def change
    create_table :neelas do |t|
      t.string :username
      t.integer :height
      t.integer :weight
      t.string :blood
      t.string :group

      t.timestamps
    end
  end
end
