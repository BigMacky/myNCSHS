require 'test_helper'

class StudentGradeSubjectsControllerTest < ActionController::TestCase
  setup do
    @student_grade_subject = student_grade_subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_grade_subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_grade_subject" do
    assert_difference('StudentGradeSubject.count') do
      post :create, student_grade_subject: { grade: @student_grade_subject.grade, quarter: @student_grade_subject.quarter, student_lrn: @student_grade_subject.student_lrn, subject_title: @student_grade_subject.subject_title }
    end

    assert_redirected_to student_grade_subject_path(assigns(:student_grade_subject))
  end

  test "should show student_grade_subject" do
    get :show, id: @student_grade_subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_grade_subject
    assert_response :success
  end

  test "should update student_grade_subject" do
    patch :update, id: @student_grade_subject, student_grade_subject: { grade: @student_grade_subject.grade, quarter: @student_grade_subject.quarter, student_lrn: @student_grade_subject.student_lrn, subject_title: @student_grade_subject.subject_title }
    assert_redirected_to student_grade_subject_path(assigns(:student_grade_subject))
  end

  test "should destroy student_grade_subject" do
    assert_difference('StudentGradeSubject.count', -1) do
      delete :destroy, id: @student_grade_subject
    end

    assert_redirected_to student_grade_subjects_path
  end
end
