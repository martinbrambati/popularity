require 'test_helper'

class ImagequestionsControllerTest < ActionController::TestCase
  setup do
    @imagequestion = imagequestions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagequestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagequestion" do
    assert_difference('Imagequestion.count') do
      post :create, imagequestion: { category_id: @imagequestion.category_id, file_name: @imagequestion.file_name, hint: @imagequestion.hint }
    end

    assert_redirected_to imagequestion_path(assigns(:imagequestion))
  end

  test "should show imagequestion" do
    get :show, id: @imagequestion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagequestion
    assert_response :success
  end

  test "should update imagequestion" do
    patch :update, id: @imagequestion, imagequestion: { category_id: @imagequestion.category_id, file_name: @imagequestion.file_name, hint: @imagequestion.hint }
    assert_redirected_to imagequestion_path(assigns(:imagequestion))
  end

  test "should destroy imagequestion" do
    assert_difference('Imagequestion.count', -1) do
      delete :destroy, id: @imagequestion
    end

    assert_redirected_to imagequestions_path
  end
end
