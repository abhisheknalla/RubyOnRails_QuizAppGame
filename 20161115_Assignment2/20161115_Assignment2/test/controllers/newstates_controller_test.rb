require 'test_helper'

class NewstatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newstate = newstates(:one)
  end

  test "should get index" do
    get newstates_url
    assert_response :success
  end

  test "should get new" do
    get new_newstate_url
    assert_response :success
  end

  test "should create newstate" do
    assert_difference('Newstate.count') do
      post newstates_url, params: { newstate: { questionid: @newstate.questionid, quizname: @newstate.quizname, score: @newstate.score, userid: @newstate.userid } }
    end

    assert_redirected_to newstate_url(Newstate.last)
  end

  test "should show newstate" do
    get newstate_url(@newstate)
    assert_response :success
  end

  test "should get edit" do
    get edit_newstate_url(@newstate)
    assert_response :success
  end

  test "should update newstate" do
    patch newstate_url(@newstate), params: { newstate: { questionid: @newstate.questionid, quizname: @newstate.quizname, score: @newstate.score, userid: @newstate.userid } }
    assert_redirected_to newstate_url(@newstate)
  end

  test "should destroy newstate" do
    assert_difference('Newstate.count', -1) do
      delete newstate_url(@newstate)
    end

    assert_redirected_to newstates_url
  end
end
