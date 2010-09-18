require 'test_helper'

class EntreesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entree" do
    assert_difference('Entree.count') do
      post :create, :entree => { }
    end

    assert_redirected_to entree_path(assigns(:entree))
  end

  test "should show entree" do
    get :show, :id => entrees(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => entrees(:one).to_param
    assert_response :success
  end

  test "should update entree" do
    put :update, :id => entrees(:one).to_param, :entree => { }
    assert_redirected_to entree_path(assigns(:entree))
  end

  test "should destroy entree" do
    assert_difference('Entree.count', -1) do
      delete :destroy, :id => entrees(:one).to_param
    end

    assert_redirected_to entrees_path
  end
end
