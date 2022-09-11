require "test_helper"

class ComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @component = components(:one)
  end

  test "should get index" do
    get components_url
    assert_response :success
  end

  test "should get new" do
    get new_component_url
    assert_response :success
  end

  test "should create component" do
    assert_difference("Component.count") do
      post components_url, params: { component: { editor_id: @component.editor_id, lts: @component.lts, manager_id: @component.manager_id, name: @component.name, note: @component.note, release_date: @component.release_date, support_end_date: @component.support_end_date, support_end_date_ex: @component.support_end_date_ex, support_type: @component.support_type, version: @component.version } }
    end

    assert_redirected_to component_url(Component.last)
  end

  test "should show component" do
    get component_url(@component)
    assert_response :success
  end

  test "should get edit" do
    get edit_component_url(@component)
    assert_response :success
  end

  test "should update component" do
    patch component_url(@component), params: { component: { editor_id: @component.editor_id, lts: @component.lts, manager_id: @component.manager_id, name: @component.name, note: @component.note, release_date: @component.release_date, support_end_date: @component.support_end_date, support_end_date_ex: @component.support_end_date_ex, support_type: @component.support_type, version: @component.version } }
    assert_redirected_to component_url(@component)
  end

  test "should destroy component" do
    assert_difference("Component.count", -1) do
      delete component_url(@component)
    end

    assert_redirected_to components_url
  end
end
