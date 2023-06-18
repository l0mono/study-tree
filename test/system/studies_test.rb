require "application_system_test_case"

class StudiesTest < ApplicationSystemTestCase
  setup do
    @study = studies(:one)
  end

  test "visiting the index" do
    visit studies_url
    assert_selector "h1", text: "Studies"
  end

  test "creating a Study" do
    visit studies_url
    click_on "New Study"

    fill_in "Book", with: @study.book
    fill_in "Date", with: @study.date
    fill_in "Note", with: @study.note
    fill_in "Page", with: @study.page
    fill_in "Published at", with: @study.published_at
    fill_in "Time", with: @study.time
    click_on "Create Study"

    assert_text "Study was successfully created"
    click_on "Back"
  end

  test "updating a Study" do
    visit studies_url
    click_on "Edit", match: :first

    fill_in "Book", with: @study.book
    fill_in "Date", with: @study.date
    fill_in "Note", with: @study.note
    fill_in "Page", with: @study.page
    fill_in "Published at", with: @study.published_at
    fill_in "Time", with: @study.time
    click_on "Update Study"

    assert_text "Study was successfully updated"
    click_on "Back"
  end

  test "destroying a Study" do
    visit studies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Study was successfully destroyed"
  end
end
