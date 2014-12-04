require 'test_helper'

class FlashcardSetsControllerTest < ActionController::TestCase
  setup do
    @flashcard_set = flashcard_sets(:one)
  end

  test "should_not_create_set_without_title" do
    @flashcard_set = flashcard_sets(:without_title)
    assert_not @flashcard_set.save
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flashcard_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flashcard_set" do
    assert_difference('FlashcardSet.count') do
      post :create, flashcard_set: { title: @flashcard_set.title }
    end

    assert_redirected_to flashcard_set_path(assigns(:flashcard_set))
  end

  test "should show flashcard_set" do
    get :show, id: @flashcard_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flashcard_set
    assert_response :success
  end

  test "should update flashcard_set" do
    patch :update, id: @flashcard_set, flashcard_set: { title: @flashcard_set.title }
    assert_redirected_to flashcard_set_path(assigns(:flashcard_set))
  end

  test "should destroy flashcard_set" do
    assert_difference('FlashcardSet.count', -1) do
      delete :destroy, id: @flashcard_set
    end

    assert_redirected_to flashcard_sets_path
  end
end
