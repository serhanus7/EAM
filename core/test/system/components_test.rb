require "application_system_test_case"

class ComponentsTest < ApplicationSystemTestCase
  setup do
    @component = components(:one)
  end

  test "visiting the index" do
    visit components_url
    assert_selector "h1", text: "Components"
  end

  test "should create component" do
    visit components_url
    click_on "New component"

    fill_in "Editor", with: @component.editor_id
    check "Lts" if @component.lts
    fill_in "Manager", with: @component.manager_id
    fill_in "Name", with: @component.name
    fill_in "Note", with: @component.note
    fill_in "Release date", with: @component.release_date
    fill_in "Support end date", with: @component.support_end_date
    fill_in "Support end date ex", with: @component.support_end_date_ex
    fill_in "Support type", with: @component.support_type
    fill_in "Version", with: @component.version
    click_on "Create Component"

    assert_text "Component was successfully created"
    click_on "Back"
  end

  test "should update Component" do
    visit component_url(@component)
    click_on "Edit this component", match: :first

    fill_in "Editor", with: @component.editor_id
    check "Lts" if @component.lts
    fill_in "Manager", with: @component.manager_id
    fill_in "Name", with: @component.name
    fill_in "Note", with: @component.note
    fill_in "Release date", with: @component.release_date
    fill_in "Support end date", with: @component.support_end_date
    fill_in "Support end date ex", with: @component.support_end_date_ex
    fill_in "Support type", with: @component.support_type
    fill_in "Version", with: @component.version
    click_on "Update Component"

    assert_text "Component was successfully updated"
    click_on "Back"
  end

  test "should destroy Component" do
    visit component_url(@component)
    click_on "Destroy this component", match: :first

    assert_text "Component was successfully destroyed"
  end
end
