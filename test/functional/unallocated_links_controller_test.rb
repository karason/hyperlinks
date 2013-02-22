require 'test_helper'

class UnallocatedLinksControllerTest < ActionController::TestCase
  setup do
    @unallocated_link = unallocated_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unallocated_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unallocated_link" do
    assert_difference('UnallocatedLink.count') do
      post :create, unallocated_link: { from_user_id: @unallocated_link.from_user_id, link_id: @unallocated_link.link_id, to_user_id: @unallocated_link.to_user_id }
    end

    assert_redirected_to unallocated_link_path(assigns(:unallocated_link))
  end

  test "should show unallocated_link" do
    get :show, id: @unallocated_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unallocated_link
    assert_response :success
  end

  test "should update unallocated_link" do
    put :update, id: @unallocated_link, unallocated_link: { from_user_id: @unallocated_link.from_user_id, link_id: @unallocated_link.link_id, to_user_id: @unallocated_link.to_user_id }
    assert_redirected_to unallocated_link_path(assigns(:unallocated_link))
  end

  test "should destroy unallocated_link" do
    assert_difference('UnallocatedLink.count', -1) do
      delete :destroy, id: @unallocated_link
    end

    assert_redirected_to unallocated_links_path
  end
end
