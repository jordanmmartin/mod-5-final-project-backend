require 'test_helper'

class AnnotationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annotation = annotations(:one)
  end

  test "should get index" do
    get annotations_url, as: :json
    assert_response :success
  end

  test "should create annotation" do
    assert_difference('Annotation.count') do
      post annotations_url, params: { annotation: { brand: @annotation.brand, category: @annotation.category, name: @annotation.name, photo_id: @annotation.photo_id, shade: @annotation.shade, url: @annotation.url } }, as: :json
    end

    assert_response 201
  end

  test "should show annotation" do
    get annotation_url(@annotation), as: :json
    assert_response :success
  end

  test "should update annotation" do
    patch annotation_url(@annotation), params: { annotation: { brand: @annotation.brand, category: @annotation.category, name: @annotation.name, photo_id: @annotation.photo_id, shade: @annotation.shade, url: @annotation.url } }, as: :json
    assert_response 200
  end

  test "should destroy annotation" do
    assert_difference('Annotation.count', -1) do
      delete annotation_url(@annotation), as: :json
    end

    assert_response 204
  end
end
