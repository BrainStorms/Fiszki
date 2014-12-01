class FlashcardSetsController < ApplicationController
  before_action :set_flashcard_set, only: [:show, :edit, :update, :destroy]

  def index
    @flashcard_sets = FlashcardSet.all
    respond_with(@flashcard_sets)
  end

  def show
    respond_with(@flashcard_set)
  end

  def new
    @flashcard_set = FlashcardSet.new
    respond_with(@flashcard_set)
  end

  def edit
  end

  def create
    @flashcard_set = FlashcardSet.new(flashcard_set_params)
    @flashcard_set.save
    respond_with(@flashcard_set)
  end

  def update
    @flashcard_set.update(flashcard_set_params)
    respond_with(@flashcard_set)
  end

  def destroy
    @flashcard_set.destroy
    respond_with(@flashcard_set)
  end

  private
    def set_flashcard_set
      @flashcard_set = FlashcardSet.find(params[:id])
    end

    def flashcard_set_params
      params.require(:flashcard_set).permit(:title)
    end
end
