require 'test_helper'

class EvaluationSheetsControllerTest < ActionController::TestCase
  setup do
    @evaluation_sheet = evaluation_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluation_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation_sheet" do
    assert_difference('EvaluationSheet.count') do
      post :create, evaluation_sheet: {  }
    end

    assert_redirected_to evaluation_sheet_path(assigns(:evaluation_sheet))
  end

  test "should show evaluation_sheet" do
    get :show, id: @evaluation_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation_sheet
    assert_response :success
  end

  test "should update evaluation_sheet" do
    put :update, id: @evaluation_sheet, evaluation_sheet: {  }
    assert_redirected_to evaluation_sheet_path(assigns(:evaluation_sheet))
  end

  test "should destroy evaluation_sheet" do
    assert_difference('EvaluationSheet.count', -1) do
      delete :destroy, id: @evaluation_sheet
    end

    assert_redirected_to evaluation_sheets_path
  end
end
