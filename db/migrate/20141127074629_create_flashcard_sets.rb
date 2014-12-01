class CreateFlashcardSets < ActiveRecord::Migration
  def change
    create_table :flashcard_sets do |t|
      t.string :title

      t.timestamps
    end
  end
end
