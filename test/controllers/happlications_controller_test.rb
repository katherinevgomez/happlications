require "test_helper"

class HapplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @happlication = happlications(:one)
  end

  test "should get index" do
    get happlications_url, as: :json
    assert_response :success
  end

  test "should create happlication" do
    assert_difference('Happlication.count') do
      post happlications_url, params: { happlication: { company: @happlication.company, date: @happlication.date, interview: @happlication.interview, role: @happlication.role } }, as: :json
    end

    assert_response 201
  end

  test "should show happlication" do
    get happlication_url(@happlication), as: :json
    assert_response :success
  end

  test "should update happlication" do
    patch happlication_url(@happlication), params: { happlication: { company: @happlication.company, date: @happlication.date, interview: @happlication.interview, role: @happlication.role } }, as: :json
    assert_response 200
  end

  test "should destroy happlication" do
    assert_difference('Happlication.count', -1) do
      delete happlication_url(@happlication), as: :json
    end

    assert_response 204
  end
end
