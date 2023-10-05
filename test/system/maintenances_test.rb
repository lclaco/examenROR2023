require "application_system_test_case"

class MaintenancesTest < ApplicationSystemTestCase
  setup do
    @maintenance = maintenances(:one)
  end

  test "visiting the index" do
    visit maintenances_url
    assert_selector "h1", text: "Maintenances"
  end

  test "should create maintenance" do
    visit maintenances_url
    click_on "New maintenance"

    fill_in "City", with: @maintenance.city_id
    fill_in "Engine", with: @maintenance.engine_id
    fill_in "Engine type", with: @maintenance.engine_type
    fill_in "Maintenance date", with: @maintenance.maintenance_date
    fill_in "Maintenance type", with: @maintenance.maintenance_type
    fill_in "Material", with: @maintenance.material_id
    fill_in "User", with: @maintenance.user_id
    click_on "Create Maintenance"

    assert_text "Maintenance was successfully created"
    click_on "Back"
  end

  test "should update Maintenance" do
    visit maintenance_url(@maintenance)
    click_on "Edit this maintenance", match: :first

    fill_in "City", with: @maintenance.city_id
    fill_in "Engine", with: @maintenance.engine_id
    fill_in "Engine type", with: @maintenance.engine_type
    fill_in "Maintenance date", with: @maintenance.maintenance_date
    fill_in "Maintenance type", with: @maintenance.maintenance_type
    fill_in "Material", with: @maintenance.material_id
    fill_in "User", with: @maintenance.user_id
    click_on "Update Maintenance"

    assert_text "Maintenance was successfully updated"
    click_on "Back"
  end

  test "should destroy Maintenance" do
    visit maintenance_url(@maintenance)
    click_on "Destroy this maintenance", match: :first

    assert_text "Maintenance was successfully destroyed"
  end
end
