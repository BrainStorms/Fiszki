class FlashcardSet < ActiveRecord::Base
  validates :title, presence: true
  
  has_many :flashcards
end
