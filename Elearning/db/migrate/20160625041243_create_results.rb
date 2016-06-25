class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :user_id
      t.integer :word_id
      t.integer :category_id

      t.timestamps null: false
    end
    add_index :results, [:user_id, :word_id, :category_id]
  end
end
