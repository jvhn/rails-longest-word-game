require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  test "display a random grid" do
    visit '/new'
    assert test: "New game"
    assert_selector "li", count: 10
  end

  test "tap a random word" do
    visit '/new'
    fill_in "word", with: "Hello"
    click_on "Play"

    #assert_text "Sorry but HELLO can't be built out of"
  end

  test "tap one letter" do
    visit '/new'
    fill_in "word", with: "t"
    click_on "Play"

    assert_text "Sorry but t does not seem to be a validEnglish word!"
  end

  test "tap a valid english word" do
    visit '/new'
    fill_in "word", with: "pur"
    click_on "Play"

    assert_text "Congratulations! PUR is a valid English word!"
  end
end
