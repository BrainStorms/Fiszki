class DeleteFlashcardIdFromFlashcardSets < ActiveRecord::Migration
  def change
    remove_column :flashcard_sets, :flashcard_id, :string
  end
end
