require "test_helper"

class EnginersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enginer = enginers(:one)
  end

  test "should get index" do
    get enginers_url
    assert_response :success
  end

  test "should get new" do
    get new_enginer_url
    assert_response :success
  end

  test "should create enginer" do
    assert_difference("Enginer.count") do
      post enginers_url, params: { enginer: { descripcion: @enginer.descripcion, equipment_type: @enginer.equipment_type, name: @enginer.name } }
    end

    assert_redirected_to enginer_url(Enginer.last)
  end

  test "should show enginer" do
    get enginer_url(@enginer)
    assert_response :success
  end

  test "should get edit" do
    get edit_enginer_url(@enginer)
    assert_response :success
  end

  test "should update enginer" do
    patch enginer_url(@enginer), params: { enginer: { descripcion: @enginer.descripcion, equipment_type: @enginer.equipment_type, name: @enginer.name } }
    assert_redirected_to enginer_url(@enginer)
  end

  test "should destroy enginer" do
    assert_difference("Enginer.count", -1) do
      delete enginer_url(@enginer)
    end

    assert_redirected_to enginers_url
  end
end
