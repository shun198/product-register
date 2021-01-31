require "application_system_test_case"

class ProdectsTest < ApplicationSystemTestCase
  setup do
    @prodect = prodects(:one)
  end

  test "visiting the index" do
    visit prodects_url
    assert_selector "h1", text: "Prodects"
  end

  test "creating a Prodect" do
    visit prodects_url
    click_on "New Prodect"

    fill_in "Name", with: @prodect.name
    fill_in "Price", with: @prodect.price
    fill_in "Vendor", with: @prodect.vendor
    click_on "Create Prodect"

    assert_text "Prodect was successfully created"
    click_on "Back"
  end

  test "updating a Prodect" do
    visit prodects_url
    click_on "Edit", match: :first

    fill_in "Name", with: @prodect.name
    fill_in "Price", with: @prodect.price
    fill_in "Vendor", with: @prodect.vendor
    click_on "Update Prodect"

    assert_text "Prodect was successfully updated"
    click_on "Back"
  end

  test "destroying a Prodect" do
    visit prodects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prodect was successfully destroyed"
  end
end
