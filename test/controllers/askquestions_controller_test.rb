require 'test_helper'

class AskquestionsControllerTest < ActionController::TestCase
  setup do
    @askquestion = askquestions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:askquestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create askquestion" do
    assert_difference('Askquestion.count') do
      post :create, askquestion: { question: @askquestion.question, subject: @askquestion.subject, title: @askquestion.title }
    end

    assert_redirected_to askquestion_path(assigns(:askquestion))
  end

  test "should show askquestion" do
    get :show, id: @askquestion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @askquestion
    assert_response :success
  end

  test "should update askquestion" do
    patch :update, id: @askquestion, askquestion: { question: @askquestion.question, subject: @askquestion.subject, title: @askquestion.title }
    assert_redirected_to askquestion_path(assigns(:askquestion))
  end

  test "should destroy askquestion" do
    assert_difference('Askquestion.count', -1) do
      delete :destroy, id: @askquestion
    end

    assert_redirected_to askquestions_path
  end
end
