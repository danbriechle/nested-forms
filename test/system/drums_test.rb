require "application_system_test_case"

class DrumsTest < ApplicationSystemTestCase
  setup do
    @drum = drums(:one)
  end

  test "visiting the index" do
    visit drums_url
    assert_selector "h1", text: "Drums"
  end

  test "creating a Drum" do
    visit drums_url
    click_on "New Drum"

    fill_in "Size", with: @drum.size
    click_on "Create Drum"

    assert_text "Drum was successfully created"
    click_on "Back"
  end

  test "updating a Drum" do
    visit drums_url
    click_on "Edit", match: :first

    fill_in "Size", with: @drum.size
    click_on "Update Drum"

    assert_text "Drum was successfully updated"
    click_on "Back"
  end

  test "destroying a Drum" do
    visit drums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drum was successfully destroyed"
  end
end
