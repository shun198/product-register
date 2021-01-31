require 'test_helper'

class ProdectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prodect = prodects(:one)
  end

  test "should get index" do
    get prodects_url
    assert_response :success
  end

  test "should get new" do
    get new_prodect_url
    assert_response :success
  end

  test "should create prodect" do
    assert_difference('Prodect.count') do
      post prodects_url, params: { prodect: { name: @prodect.name, price: @prodect.price, vendor: @prodect.vendor } }
    end

    assert_redirected_to prodect_url(Prodect.last)
  end

  test "should show prodect" do
    get prodect_url(@prodect)
    assert_response :success
  end

  test "should get edit" do
    get edit_prodect_url(@prodect)
    assert_response :success
  end

  test "should update prodect" do
    patch prodect_url(@prodect), params: { prodect: { name: @prodect.name, price: @prodect.price, vendor: @prodect.vendor } }
    assert_redirected_to prodect_url(@prodect)
  end

  test "should destroy prodect" do
    assert_difference('Prodect.count', -1) do
      delete prodect_url(@prodect)
    end

    assert_redirected_to prodects_url
  end
end
