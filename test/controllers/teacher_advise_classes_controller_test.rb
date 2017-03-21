require 'test_helper'

class TeacherAdviseClassesControllerTest < ActionController::TestCase
  setup do
    @teacher_advise_class = teacher_advise_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_advise_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_advise_class" do
    assert_difference('TeacherAdviseClass.count') do
      post :create, teacher_advise_class: { section_name: @teacher_advise_class.section_name, teacher_id: @teacher_advise_class.teacher_id }
    end

    assert_redirected_to teacher_advise_class_path(assigns(:teacher_advise_class))
  end

  test "should show teacher_advise_class" do
    get :show, id: @teacher_advise_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_advise_class
    assert_response :success
  end

  test "should update teacher_advise_class" do
    patch :update, id: @teacher_advise_class, teacher_advise_class: { section_name: @teacher_advise_class.section_name, teacher_id: @teacher_advise_class.teacher_id }
    assert_redirected_to teacher_advise_class_path(assigns(:teacher_advise_class))
  end

  test "should destroy teacher_advise_class" do
    assert_difference('TeacherAdviseClass.count', -1) do
      delete :destroy, id: @teacher_advise_class
    end

    assert_redirected_to teacher_advise_classes_path
  end
end
