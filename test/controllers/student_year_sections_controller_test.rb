require 'test_helper'

class StudentYearSectionsControllerTest < ActionController::TestCase
  setup do
    @student_year_section = student_year_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_year_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_year_section" do
    assert_difference('StudentYearSection.count') do
      post :create, student_year_section: { section_name: @student_year_section.section_name, student_lrn: @student_year_section.student_lrn, year_level: @student_year_section.year_level }
    end

    assert_redirected_to student_year_section_path(assigns(:student_year_section))
  end

  test "should show student_year_section" do
    get :show, id: @student_year_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_year_section
    assert_response :success
  end

  test "should update student_year_section" do
    patch :update, id: @student_year_section, student_year_section: { section_name: @student_year_section.section_name, student_lrn: @student_year_section.student_lrn, year_level: @student_year_section.year_level }
    assert_redirected_to student_year_section_path(assigns(:student_year_section))
  end

  test "should destroy student_year_section" do
    assert_difference('StudentYearSection.count', -1) do
      delete :destroy, id: @student_year_section
    end

    assert_redirected_to student_year_sections_path
  end
end
