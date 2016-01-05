class CreateTests < ActiveRecord::Migration
  def change
  	drop_table :tests
    create_table :tests do |t|
      t.string :name
      t.string :path
      t.string :scale

      t.timestamps null: false
    end
  end
end
