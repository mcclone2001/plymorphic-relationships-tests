require "application_system_test_case"

class TiresTest < ApplicationSystemTestCase
  setup do
    @tire = tires(:one)
  end

  test "visiting the index" do
    visit tires_url
    assert_selector "h1", text: "Tires"
  end

  test "creating a Tire" do
    visit tires_url
    click_on "New Tire"

    fill_in "Marca", with: @tire.marca
    fill_in "Owner", with: @tire.owner
    fill_in "Rin", with: @tire.rin
    click_on "Create Tire"

    assert_text "Tire was successfully created"
    click_on "Back"
  end

  test "updating a Tire" do
    visit tires_url
    click_on "Edit", match: :first

    fill_in "Marca", with: @tire.marca
    fill_in "Owner", with: @tire.owner
    fill_in "Rin", with: @tire.rin
    click_on "Update Tire"

    assert_text "Tire was successfully updated"
    click_on "Back"
  end

  test "destroying a Tire" do
    visit tires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tire was successfully destroyed"
  end
end
