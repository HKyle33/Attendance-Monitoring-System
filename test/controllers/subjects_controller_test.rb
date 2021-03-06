require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject = subjects(:one)
  end

  test "should get index" do
    get subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_url
    assert_response :success
  end

  test "should create subject" do
    assert_difference('Subject.count') do
      post subjects_url, params: { subject: { class_key: @subject.class_key, day: @subject.day, subject_code: @subject.subject_code, subject_title: @subject.subject_title, time_end: @subject.time_end, time_start: @subject.time_start, units: @subject.units } }
    end

    assert_redirected_to subject_url(Subject.last)
  end

  test "should show subject" do
    get subject_url(@subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_url(@subject)
    assert_response :success
  end

  test "should update subject" do
    patch subject_url(@subject), params: { subject: { class_key: @subject.class_key, day: @subject.day, subject_code: @subject.subject_code, subject_title: @subject.subject_title, time_end: @subject.time_end, time_start: @subject.time_start, units: @subject.units } }
    assert_redirected_to subject_url(@subject)
  end

  test "should destroy subject" do
    assert_difference('Subject.count', -1) do
      delete subject_url(@subject)
    end

    assert_redirected_to subjects_url
  end
end
