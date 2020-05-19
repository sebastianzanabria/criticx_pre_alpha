require "application_system_test_case"

class CriticsTest < ApplicationSystemTestCase
  setup do
    @critic = critics(:one)
  end

  test "visiting the index" do
    visit critics_url
    assert_selector "h1", text: "Critics"
  end

  test "creating a Critic" do
    visit critics_url
    click_on "New Critic"

    fill_in "Body", with: @critic.body
    fill_in "Game", with: @critic.game_id
    fill_in "Title", with: @critic.title
    fill_in "Username", with: @critic.username
    click_on "Create Critic"

    assert_text "Critic was successfully created"
    click_on "Back"
  end

  test "updating a Critic" do
    visit critics_url
    click_on "Edit", match: :first

    fill_in "Body", with: @critic.body
    fill_in "Game", with: @critic.game_id
    fill_in "Title", with: @critic.title
    fill_in "Username", with: @critic.username
    click_on "Update Critic"

    assert_text "Critic was successfully updated"
    click_on "Back"
  end

  test "destroying a Critic" do
    visit critics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Critic was successfully destroyed"
  end
end
