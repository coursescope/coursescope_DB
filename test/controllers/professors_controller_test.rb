require 'test_helper'

class ProfessorsControllerTest < ActionController::TestCase
  setup do
    @professor = professors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professor" do
    assert_difference('Professor.count') do
      post :create, professor: { Field: @professor.Field, email: @professor.email, firstName: @professor.firstName, lastName: @professor.lastName, professorID: @professor.professorID, website: @professor.website }
    end

    assert_redirected_to professor_path(assigns(:professor))
  end

  test "should show professor" do
    get :show, id: @professor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professor
    assert_response :success
  end

  test "should update professor" do
    patch :update, id: @professor, professor: { Field: @professor.Field, email: @professor.email, firstName: @professor.firstName, lastName: @professor.lastName, professorID: @professor.professorID, website: @professor.website }
    assert_redirected_to professor_path(assigns(:professor))
  end

  test "should destroy professor" do
    assert_difference('Professor.count', -1) do
      delete :destroy, id: @professor
    end

    assert_redirected_to professors_path
  end
end
