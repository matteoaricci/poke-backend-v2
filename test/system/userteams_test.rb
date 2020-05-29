require "application_system_test_case"

class UserteamsTest < ApplicationSystemTestCase
  setup do
    @userteam = userteams(:one)
  end

  test "visiting the index" do
    visit userteams_url
    assert_selector "h1", text: "Userteams"
  end

  test "creating a Userteam" do
    visit userteams_url
    click_on "New Userteam"

    click_on "Create Userteam"

    assert_text "Userteam was successfully created"
    click_on "Back"
  end

  test "updating a Userteam" do
    visit userteams_url
    click_on "Edit", match: :first

    click_on "Update Userteam"

    assert_text "Userteam was successfully updated"
    click_on "Back"
  end

  test "destroying a Userteam" do
    visit userteams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userteam was successfully destroyed"
  end
end
