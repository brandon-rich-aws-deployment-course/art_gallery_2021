require "application_system_test_case"

class AlbumsTest < ApplicationSystemTestCase
  setup do
    @album = albums(:one)
  end

  test "visiting the index" do
    visit albums_url
    assert_selector "h1", text: "Albums"
  end

  test "creating a Album" do
    visit albums_url
    click_on "New Album"

    fill_in "Album title", with: @album.album_title
    fill_in "Artist", with: @album.artist
    fill_in "Cover image url", with: @album.cover_image_url
    fill_in "Year released", with: @album.year_released
    click_on "Create Album"

    assert_text "Album was successfully created"
    click_on "Back"
  end

  test "updating a Album" do
    visit albums_url
    click_on "Edit", match: :first

    fill_in "Album title", with: @album.album_title
    fill_in "Artist", with: @album.artist
    fill_in "Cover image url", with: @album.cover_image_url
    fill_in "Year released", with: @album.year_released
    click_on "Update Album"

    assert_text "Album was successfully updated"
    click_on "Back"
  end

  test "destroying a Album" do
    visit albums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Album was successfully destroyed"
  end
end
