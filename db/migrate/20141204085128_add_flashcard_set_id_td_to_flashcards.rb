class AddFlashcardSetIdTdToFlashcards < ActiveRecord::Migration
  def change
    add_column :flashcards, :flashcard_set_id, :integer
  end
end
