require "application_system_test_case"

class HorsZonesTest < ApplicationSystemTestCase
  setup do
    @hors_zone = hors_zones(:one)
  end

  test "visiting the index" do
    visit hors_zones_url
    assert_selector "h1", text: "Hors Zones"
  end

  test "creating a Hors zone" do
    visit hors_zones_url
    click_on "New Hors Zone"

    fill_in "Code Zone", with: @hors_zone.code_zone
    fill_in "Commune", with: @hors_zone.commune
    fill_in "Dat Arrete Creation", with: @hors_zone.dat_arrete_creation
    fill_in "Nbr Lot Attribues", with: @hors_zone.nbr_lot_attribues
    fill_in "Nbr Lot Cession", with: @hors_zone.nbr_lot_cession
    fill_in "Nbr Lot Concession", with: @hors_zone.nbr_lot_concession
    fill_in "Nbr Lots", with: @hors_zone.nbr_lots
    fill_in "Nom Zone", with: @hors_zone.nom_zone
    fill_in "Num Arrete Creation", with: @hors_zone.num_arrete_creation
    fill_in "Observation", with: @hors_zone.observation
    fill_in "Superf Cessible", with: @hors_zone.superf_cessible
    fill_in "Superf Total", with: @hors_zone.superf_total
    fill_in "Superf Vrd", with: @hors_zone.superf_vrd
    fill_in "Type Zone", with: @hors_zone.type_zone
    fill_in "Wilaya", with: @hors_zone.wilaya
    click_on "Create Hors zone"

    assert_text "Hors zone was successfully created"
    click_on "Back"
  end

  test "updating a Hors zone" do
    visit hors_zones_url
    click_on "Edit", match: :first

    fill_in "Code Zone", with: @hors_zone.code_zone
    fill_in "Commune", with: @hors_zone.commune
    fill_in "Dat Arrete Creation", with: @hors_zone.dat_arrete_creation
    fill_in "Nbr Lot Attribues", with: @hors_zone.nbr_lot_attribues
    fill_in "Nbr Lot Cession", with: @hors_zone.nbr_lot_cession
    fill_in "Nbr Lot Concession", with: @hors_zone.nbr_lot_concession
    fill_in "Nbr Lots", with: @hors_zone.nbr_lots
    fill_in "Nom Zone", with: @hors_zone.nom_zone
    fill_in "Num Arrete Creation", with: @hors_zone.num_arrete_creation
    fill_in "Observation", with: @hors_zone.observation
    fill_in "Superf Cessible", with: @hors_zone.superf_cessible
    fill_in "Superf Total", with: @hors_zone.superf_total
    fill_in "Superf Vrd", with: @hors_zone.superf_vrd
    fill_in "Type Zone", with: @hors_zone.type_zone
    fill_in "Wilaya", with: @hors_zone.wilaya
    click_on "Update Hors zone"

    assert_text "Hors zone was successfully updated"
    click_on "Back"
  end

  test "destroying a Hors zone" do
    visit hors_zones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hors zone was successfully destroyed"
  end
end
