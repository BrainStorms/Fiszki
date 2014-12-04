class FlashcardSetsController < ApplicationController
  before_action :set_flashcard_set, only: [:quiz, :show, :edit, :update, :destroy]

  # GET /flashcards
  # GET /flashcards.json
  def index
    @flashcard_sets = FlashcardSet.all
  end

  # GET /flashcard_sets/1/quiz
  def quiz
  end

  # GET /flashcard_sets/1
  # GET /flashcard_sets/1.json
  def show
  end

  # GET /flashcard_sets/new
  def new
    @flashcard_set = FlashcardSet.new
  end

  # GET /flashcard_sets/1/edit
  def edit
  end

  # POST /flashcards
  # POST /flashcards.json
  def create
    @flashcard_set = FlashcardSet.new(flashcard_set_params)

    respond_to do |format|
      if @flashcard_set.save
        format.html { redirect_to @flashcard_set, notice: 'FlashcardSet was successfully created.' }
        format.json { render :show, status: :created, location: @flashcard_set }
      else
        format.html { render :new }
        format.json { render json: @flashcard_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flashcards/1
  # PATCH/PUT /flashcards/1.json
  def update
    respond_to do |format|
      if @flashcard_set.update(flashcard_set_params)
        format.html { redirect_to @flashcard_set, notice: 'Flashcard was successfully updated.' }
        format.json { render :show, status: :ok, location: @flashcard_set }
      else
        format.html { render :edit }
        format.json { render json: @flashcard_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flashcards/1
  # DELETE /flashcards/1.json
  def destroy
    @flashcard_set.destroy
    respond_to do |format|
      format.html { redirect_to flashcard_sets_url, notice: 'FlashcardSet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_flashcard_set
    @flashcard_set = FlashcardSet.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def flashcard_set_params
    params.require(:flashcard_set).permit(:title)
  end
end
