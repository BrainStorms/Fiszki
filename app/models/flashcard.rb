class Flashcard < ActiveRecord::Base
	validates :question, presence: true
	validates :answer, presence: true

  belongs_to :flashcard_set
end