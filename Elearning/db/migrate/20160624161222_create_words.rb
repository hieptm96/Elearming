class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :en
      t.string :vi
      t.integer :category_id

      t.timestamps null: false
    end
    add_index :words, [:category_id, :created_at]
  end
end
