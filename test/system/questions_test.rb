require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "label", text: "Ask your coach anything"
    take_screenshot
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask!"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test "asking sth to coach gets silly question response from coach" do
    visit ask_url
    fill_in "question", with: "what's up?"
    click_on "Ask!"
    assert_text "Silly question, get dressed and go to work!"
  end

  test "writting in uppercase the right response gives the feel motivation response" do
    visit ask_url
    fill_in "question", with: "I AM GOING TO WORK RIGHT NOW!"
    click_on "Ask!"
    assert_text "I can feel your motivation!"
  end

  test "writting the right response gives great! response" do
    visit ask_url
    fill_in "question", with: "I am going to work right now!"
    click_on "Ask!"
    assert_text "Great!"
  end
end
