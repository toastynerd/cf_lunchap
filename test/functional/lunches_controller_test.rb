require 'test_helper'

class LunchesControllerTest < ActionController::TestCase
  setup do
    @lunch = lunches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lunches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lunch" do
    assert_difference('Lunch.count') do
      post :create, lunch: { day_of_the_week: @lunch.day_of_the_week, what_i_ate: @lunch.what_i_ate }
    end

    assert_redirected_to lunch_path(assigns(:lunch))
  end

  test "should show lunch" do
    get :show, id: @lunch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lunch
    assert_response :success
  end

  test "should update lunch" do
    put :update, id: @lunch, lunch: { day_of_the_week: @lunch.day_of_the_week, what_i_ate: @lunch.what_i_ate }
    assert_redirected_to lunch_path(assigns(:lunch))
  end

  test "should destroy lunch" do
    assert_difference('Lunch.count', -1) do
      delete :destroy, id: @lunch
    end

    assert_redirected_to lunches_path
  end
end
