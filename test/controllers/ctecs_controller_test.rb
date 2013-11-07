require 'test_helper'

class CtecsControllerTest < ActionController::TestCase
  setup do
    @ctec = ctecs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ctecs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ctec" do
    assert_difference('Ctec.count') do
      post :create, ctec: { challenging_rating: @ctec.challenging_rating, class: @ctec.class, course_ID: @ctec.course_ID, course_rating: @ctec.course_rating, description: @ctec.description, instr_rating: @ctec.instr_rating, interest_before: @ctec.interest_before, interest_rating: @ctec.interest_rating, learned_rating: @ctec.learned_rating, reason: @ctec.reason, school: @ctec.school }
    end

    assert_redirected_to ctec_path(assigns(:ctec))
  end

  test "should show ctec" do
    get :show, id: @ctec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ctec
    assert_response :success
  end

  test "should update ctec" do
    patch :update, id: @ctec, ctec: { challenging_rating: @ctec.challenging_rating, class: @ctec.class, course_ID: @ctec.course_ID, course_rating: @ctec.course_rating, description: @ctec.description, instr_rating: @ctec.instr_rating, interest_before: @ctec.interest_before, interest_rating: @ctec.interest_rating, learned_rating: @ctec.learned_rating, reason: @ctec.reason, school: @ctec.school }
    assert_redirected_to ctec_path(assigns(:ctec))
  end

  test "should destroy ctec" do
    assert_difference('Ctec.count', -1) do
      delete :destroy, id: @ctec
    end

    assert_redirected_to ctecs_path
  end
end
