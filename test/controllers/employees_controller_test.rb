require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { areas_to_develop: @employee.areas_to_develop, birkman: @employee.birkman, life_quote: @employee.life_quote, long_term_goal: @employee.long_term_goal, motto: @employee.motto, myers_briggs: @employee.myers_briggs, name: @employee.name, objective_setting: @employee.objective_setting,  personal_goal: @employee.personal_goal, position: @employee.position, project_id: @employee.project_id, quote: @employee.quote, short_term_goal: @employee.short_term_goal, start_date: @employee.start_date, strength: @employee.strength, team_id: @employee.team_id, vision: @employee.vision } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { areas_to_develop: @employee.areas_to_develop, birkman: @employee.birkman, life_quote: @employee.life_quote, long_term_goal: @employee.long_term_goal, motto: @employee.motto, myers_briggs: @employee.myers_briggs, name: @employee.name, objective_setting: @employee.objective_setting, personal_goal: @employee.personal_goal, position: @employee.position, project_id: @employee.project_id, quote: @employee.quote, short_term_goal: @employee.short_term_goal, start_date: @employee.start_date, strength: @employee.strength, team_id: @employee.team_id, vision: @employee.vision } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
