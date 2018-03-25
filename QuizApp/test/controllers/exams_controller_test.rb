require 'test_helper'

class ExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exam = exams(:one)
  end

  test "should get index" do
    get exams_url
    assert_response :success
  end

  test "should get new" do
    get new_exam_url
    assert_response :success
  end

  test "should create exam" do
    assert_difference('Exam.count') do
      post exams_url, params: { exam: { correct_ans: @exam.correct_ans, option1: @exam.option1, option2: @exam.option2, option3: @exam.option3, option4: @exam.option4, question: @exam.question } }
    end

    assert_redirected_to exam_url(Exam.last)
  end

  test "should show exam" do
    get exam_url(@exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_exam_url(@exam)
    assert_response :success
  end

  test "should update exam" do
    patch exam_url(@exam), params: { exam: { correct_ans: @exam.correct_ans, option1: @exam.option1, option2: @exam.option2, option3: @exam.option3, option4: @exam.option4, question: @exam.question } }
    assert_redirected_to exam_url(@exam)
  end

  test "should destroy exam" do
    assert_difference('Exam.count', -1) do
      delete exam_url(@exam)
    end

    assert_redirected_to exams_url
  end
end
