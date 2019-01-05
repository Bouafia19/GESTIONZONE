require "application_system_test_case"

class ZonesTest < ApplicationSystemTestCase
  setup do
    @zone = zones(:one)
  end

  test "visiting the index" do
    visit zones_url
    assert_selector "h1", text: "Zones"
  end

  test "creating a Zone" do
    visit zones_url
    click_on "New Zone"

    fill_in "Code Zone", with: @zone.code_zone
    fill_in "Commune", with: @zone.commune
    fill_in "Dat Arrete Creation", with: @zone.dat_arrete_creation
    fill_in "Nbr Lot Attribues", with: @zone.nbr_lot_attribues
    fill_in "Nbr Lot Cession", with: @zone.nbr_lot_cession
    fill_in "Nbr Lot Concession", with: @zone.nbr_lot_concession
    fill_in "Nbr Lots", with: @zone.nbr_lots
    fill_in "Nom Zone", with: @zone.nom_zone
    fill_in "Num Arrete Creation", with: @zone.num_arrete_creation
    fill_in "Observation", with: @zone.observation
    fill_in "Superf Cessible", with: @zone.superf_cessible
    fill_in "Superf Total", with: @zone.superf_total
    fill_in "Superf Vrd", with: @zone.superf_vrd
    fill_in "Type", with: @zone.type
    fill_in "Wilaya", with: @zone.wilaya
    click_on "Create Zone"

    assert_text "Zone was successfully created"
    click_on "Back"
  end

  test "updating a Zone" do
    visit zones_url
    click_on "Edit", match: :first

    fill_in "Code Zone", with: @zone.code_zone
    fill_in "Commune", with: @zone.commune
    fill_in "Dat Arrete Creation", with: @zone.dat_arrete_creation
    fill_in "Nbr Lot Attribues", with: @zone.nbr_lot_attribues
    fill_in "Nbr Lot Cession", with: @zone.nbr_lot_cession
    fill_in "Nbr Lot Concession", with: @zone.nbr_lot_concession
    fill_in "Nbr Lots", with: @zone.nbr_lots
    fill_in "Nom Zone", with: @zone.nom_zone
    fill_in "Num Arrete Creation", with: @zone.num_arrete_creation
    fill_in "Observation", with: @zone.observation
    fill_in "Superf Cessible", with: @zone.superf_cessible
    fill_in "Superf Total", with: @zone.superf_total
    fill_in "Superf Vrd", with: @zone.superf_vrd
    fill_in "Type", with: @zone.type
    fill_in "Wilaya", with: @zone.wilaya
    click_on "Update Zone"

    assert_text "Zone was successfully updated"
    click_on "Back"
  end

  test "destroying a Zone" do
    visit zones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zone was successfully destroyed"
  end
end
