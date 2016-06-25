class RemoveCategoryTitleFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :category_title, :string
  end
end
