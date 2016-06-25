class AddWordLearnedQuantityToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :word_learned_quantity, :integer
  end
end
