require "application_system_test_case"

class EnginersTest < ApplicationSystemTestCase
  setup do
    @enginer = enginers(:one)
  end

  test "visiting the index" do
    visit enginers_url
    assert_selector "h1", text: "Enginers"
  end

  test "should create enginer" do
    visit enginers_url
    click_on "New enginer"

    fill_in "Descripcion", with: @enginer.descripcion
    fill_in "Equipment type", with: @enginer.equipment_type
    fill_in "Name", with: @enginer.name
    click_on "Create Enginer"

    assert_text "Enginer was successfully created"
    click_on "Back"
  end

  test "should update Enginer" do
    visit enginer_url(@enginer)
    click_on "Edit this enginer", match: :first

    fill_in "Descripcion", with: @enginer.descripcion
    fill_in "Equipment type", with: @enginer.equipment_type
    fill_in "Name", with: @enginer.name
    click_on "Update Enginer"

    assert_text "Enginer was successfully updated"
    click_on "Back"
  end

  test "should destroy Enginer" do
    visit enginer_url(@enginer)
    click_on "Destroy this enginer", match: :first

    assert_text "Enginer was successfully destroyed"
  end
end
