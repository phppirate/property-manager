require 'test_helper'

class PropertyDetailsControllerTest < ActionController::TestCase
  setup do
    @property_detail = property_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_detail" do
    assert_difference('PropertyDetail.count') do
      post :create, property_detail: { comments: @property_detail.comments, date_of_contact: @property_detail.date_of_contact, name: @property_detail.name, property_id: @property_detail.property_id, requirements: @property_detail.requirements, source_contact: @property_detail.source_contact, source_type: @property_detail.source_type, status: @property_detail.status }
    end

    assert_redirected_to property_detail_path(assigns(:property_detail))
  end

  test "should show property_detail" do
    get :show, id: @property_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_detail
    assert_response :success
  end

  test "should update property_detail" do
    patch :update, id: @property_detail, property_detail: { comments: @property_detail.comments, date_of_contact: @property_detail.date_of_contact, name: @property_detail.name, property_id: @property_detail.property_id, requirements: @property_detail.requirements, source_contact: @property_detail.source_contact, source_type: @property_detail.source_type, status: @property_detail.status }
    assert_redirected_to property_detail_path(assigns(:property_detail))
  end

  test "should destroy property_detail" do
    assert_difference('PropertyDetail.count', -1) do
      delete :destroy, id: @property_detail
    end

    assert_redirected_to property_details_path
  end
end
