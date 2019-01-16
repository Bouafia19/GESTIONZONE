require "application_system_test_case"

class ZoneActivitesTest < ApplicationSystemTestCase
  setup do
    @zone_activite = zone_activites(:one)
  end

  test "visiting the index" do
    visit zone_activites_url
    assert_selector "h1", text: "Zone Activites"
  end

  test "creating a Zone activite" do
    visit zone_activites_url
    click_on "New Zone Activite"

    fill_in "Code Zone", with: @zone_activite.code_zone
    fill_in "Commune", with: @zone_activite.commune
    fill_in "Dat Arrete Creation", with: @zone_activite.dat_arrete_creation
    fill_in "Nbr Lot Attribues", with: @zone_activite.nbr_lot_attribues
    fill_in "Nbr Lot Cession", with: @zone_activite.nbr_lot_cession
    fill_in "Nbr Lot Concession", with: @zone_activite.nbr_lot_concession
    fill_in "Nbr Lots", with: @zone_activite.nbr_lots
    fill_in "Nom Zone", with: @zone_activite.nom_zone
    fill_in "Num Arrete Creation", with: @zone_activite.num_arrete_creation
    fill_in "Observation", with: @zone_activite.observation
    fill_in "Superf Cessible", with: @zone_activite.superf_cessible
    fill_in "Superf Total", with: @zone_activite.superf_total
    fill_in "Superf Vrd", with: @zone_activite.superf_vrd
    fill_in "Type Zone", with: @zone_activite.type_zone
    fill_in "Wilaya", with: @zone_activite.wilaya
    click_on "Create Zone activite"

    assert_text "Zone activite was successfully created"
    click_on "Back"
  end

  test "updating a Zone activite" do
    visit zone_activites_url
    click_on "Edit", match: :first

    fill_in "Code Zone", with: @zone_activite.code_zone
    fill_in "Commune", with: @zone_activite.commune
    fill_in "Dat Arrete Creation", with: @zone_activite.dat_arrete_creation
    fill_in "Nbr Lot Attribues", with: @zone_activite.nbr_lot_attribues
    fill_in "Nbr Lot Cession", with: @zone_activite.nbr_lot_cession
    fill_in "Nbr Lot Concession", with: @zone_activite.nbr_lot_concession
    fill_in "Nbr Lots", with: @zone_activite.nbr_lots
    fill_in "Nom Zone", with: @zone_activite.nom_zone
    fill_in "Num Arrete Creation", with: @zone_activite.num_arrete_creation
    fill_in "Observation", with: @zone_activite.observation
    fill_in "Superf Cessible", with: @zone_activite.superf_cessible
    fill_in "Superf Total", with: @zone_activite.superf_total
    fill_in "Superf Vrd", with: @zone_activite.superf_vrd
    fill_in "Type Zone", with: @zone_activite.type_zone
    fill_in "Wilaya", with: @zone_activite.wilaya
    click_on "Update Zone activite"

    assert_text "Zone activite was successfully updated"
    click_on "Back"
  end

  test "destroying a Zone activite" do
    visit zone_activites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zone activite was successfully destroyed"
  end
end
