require 'test_helper'

class TeacherSubjectSectionsControllerTest < ActionController::TestCase
  setup do
    @teacher_subject_section = teacher_subject_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_subject_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_subject_section" do
    assert_difference('TeacherSubjectSection.count') do
      post :create, teacher_subject_section: { section_name: @teacher_subject_section.section_name, subject_title: @teacher_subject_section.subject_title, teacher_id: @teacher_subject_section.teacher_id }
    end

    assert_redirected_to teacher_subject_section_path(assigns(:teacher_subject_section))
  end

  test "should show teacher_subject_section" do
    get :show, id: @teacher_subject_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_subject_section
    assert_response :success
  end

  test "should update teacher_subject_section" do
    patch :update, id: @teacher_subject_section, teacher_subject_section: { section_name: @teacher_subject_section.section_name, subject_title: @teacher_subject_section.subject_title, teacher_id: @teacher_subject_section.teacher_id }
    assert_redirected_to teacher_subject_section_path(assigns(:teacher_subject_section))
  end

  test "should destroy teacher_subject_section" do
    assert_difference('TeacherSubjectSection.count', -1) do
      delete :destroy, id: @teacher_subject_section
    end

    assert_redirected_to teacher_subject_sections_path
  end
end
