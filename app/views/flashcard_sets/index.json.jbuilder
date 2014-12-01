json.array!(@flashcard_sets) do |flashcard_set|
  json.extract! flashcard_set, :id, :title
  json.url flashcard_set_url(flashcard_set, format: :json)
end
