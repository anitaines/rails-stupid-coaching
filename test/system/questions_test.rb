require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end

  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "label", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "not asking a question yields grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: ""
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  # test "clicking anchor leads to ask" do
  #   visit answer_url

  #   # expect(find('a')).to have_current_path('ask')
  #   # expect(find('a')).to has_link?('ask')
  # end
end
