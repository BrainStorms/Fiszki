class AddFlashcardIdToFlashcardSets < ActiveRecord::Migration
  def change
    add_column :flashcard_sets, :flashcard_id, :string
  end
end
