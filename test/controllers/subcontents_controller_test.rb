require 'test_helper'

class SubcontentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subcontent = subcontents(:one)
  end

  test "should get index" do
    get subcontents_url
    assert_response :success
  end

  test "should get new" do
    get new_subcontent_url
    assert_response :success
  end

  test "should create subcontent" do
    assert_difference('Subcontent.count') do
      post subcontents_url, params: { subcontent: { content: @subcontent.content, tilte: @subcontent.tilte } }
    end

    assert_redirected_to subcontent_url(Subcontent.last)
  end

  test "should show subcontent" do
    get subcontent_url(@subcontent)
    assert_response :success
  end

  test "should get edit" do
    get edit_subcontent_url(@subcontent)
    assert_response :success
  end

  test "should update subcontent" do
    patch subcontent_url(@subcontent), params: { subcontent: { content: @subcontent.content, tilte: @subcontent.tilte } }
    assert_redirected_to subcontent_url(@subcontent)
  end

  test "should destroy subcontent" do
    assert_difference('Subcontent.count', -1) do
      delete subcontent_url(@subcontent)
    end

    assert_redirected_to subcontents_url
  end
end
