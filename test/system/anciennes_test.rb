require "application_system_test_case"

class AnciennesTest < ApplicationSystemTestCase
  setup do
    @ancienne = anciennes(:one)
  end

  test "visiting the index" do
    visit anciennes_url
    assert_selector "h1", text: "Anciennes"
  end

  test "creating a Ancienne" do
    visit anciennes_url
    click_on "New Ancienne"

    fill_in "Geom", with: @ancienne.geom
    fill_in "N de lot", with: @ancienne.n_de_lot
    fill_in "N dossier", with: @ancienne.n_dossier
    fill_in "R socia ar", with: @ancienne.r_socia_ar
    fill_in "R socia fr", with: @ancienne.r_socia_fr
    click_on "Create Ancienne"

    assert_text "Ancienne was successfully created"
    click_on "Back"
  end

  test "updating a Ancienne" do
    visit anciennes_url
    click_on "Edit", match: :first

    fill_in "Geom", with: @ancienne.geom
    fill_in "N de lot", with: @ancienne.n_de_lot
    fill_in "N dossier", with: @ancienne.n_dossier
    fill_in "R socia ar", with: @ancienne.r_socia_ar
    fill_in "R socia fr", with: @ancienne.r_socia_fr
    click_on "Update Ancienne"

    assert_text "Ancienne was successfully updated"
    click_on "Back"
  end

  test "destroying a Ancienne" do
    visit anciennes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ancienne was successfully destroyed"
  end
end
