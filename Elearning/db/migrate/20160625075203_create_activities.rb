class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :category_title

      t.timestamps null: false
    end
    add_index :activities, [:created_at]
  end
end
