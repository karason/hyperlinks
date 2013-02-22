require 'test_helper'

class AllocatedLinksControllerTest < ActionController::TestCase
  setup do
    @allocated_link = allocated_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allocated_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allocated_link" do
    assert_difference('AllocatedLink.count') do
      post :create, allocated_link: { category_id: @allocated_link.category_id, link_id: @allocated_link.link_id, user_id: @allocated_link.user_id }
    end

    assert_redirected_to allocated_link_path(assigns(:allocated_link))
  end

  test "should show allocated_link" do
    get :show, id: @allocated_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allocated_link
    assert_response :success
  end

  test "should update allocated_link" do
    put :update, id: @allocated_link, allocated_link: { category_id: @allocated_link.category_id, link_id: @allocated_link.link_id, user_id: @allocated_link.user_id }
    assert_redirected_to allocated_link_path(assigns(:allocated_link))
  end

  test "should destroy allocated_link" do
    assert_difference('AllocatedLink.count', -1) do
      delete :destroy, id: @allocated_link
    end

    assert_redirected_to allocated_links_path
  end
end
