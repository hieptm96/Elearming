class AddAnswerToWords < ActiveRecord::Migration
  def change
    add_column :words, :ans_a, :string
    add_column :words, :ans_b, :string
    add_column :words, :ans_c, :string
    add_column :words, :ans_d, :string
  end
end
