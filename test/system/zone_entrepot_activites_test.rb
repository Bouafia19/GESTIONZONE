require "application_system_test_case"

class ZoneEntrepotActivitesTest < ApplicationSystemTestCase
  setup do
    @zone_entrepot_activite = zone_entrepot_activites(:one)
  end

  test "visiting the index" do
    visit zone_entrepot_activites_url
    assert_selector "h1", text: "Zone Entrepot Activites"
  end

  test "creating a Zone entrepot activite" do
    visit zone_entrepot_activites_url
    click_on "New Zone Entrepot Activite"

    fill_in "Code zone", with: @zone_entrepot_activite.code_zone
    fill_in "Commune", with: @zone_entrepot_activite.commune
    fill_in "Dat arrete creation", with: @zone_entrepot_activite.dat_arrete_creation
    fill_in "Nbr lot attribues", with: @zone_entrepot_activite.nbr_lot_attribues
    fill_in "Nbr lot cession", with: @zone_entrepot_activite.nbr_lot_cession
    fill_in "Nbr lot concession", with: @zone_entrepot_activite.nbr_lot_concession
    fill_in "Nbr lots", with: @zone_entrepot_activite.nbr_lots
    fill_in "Nom zone", with: @zone_entrepot_activite.nom_zone
    fill_in "Num arrete creation", with: @zone_entrepot_activite.num_arrete_creation
    fill_in "Observation", with: @zone_entrepot_activite.observation
    fill_in "Superf cessible", with: @zone_entrepot_activite.superf_cessible
    fill_in "Superf total", with: @zone_entrepot_activite.superf_total
    fill_in "Superf vrd", with: @zone_entrepot_activite.superf_vrd
    fill_in "Type zone", with: @zone_entrepot_activite.type_zone
    fill_in "Wilaya", with: @zone_entrepot_activite.wilaya
    click_on "Create Zone entrepot activite"

    assert_text "Zone entrepot activite was successfully created"
    click_on "Back"
  end

  test "updating a Zone entrepot activite" do
    visit zone_entrepot_activites_url
    click_on "Edit", match: :first

    fill_in "Code zone", with: @zone_entrepot_activite.code_zone
    fill_in "Commune", with: @zone_entrepot_activite.commune
    fill_in "Dat arrete creation", with: @zone_entrepot_activite.dat_arrete_creation
    fill_in "Nbr lot attribues", with: @zone_entrepot_activite.nbr_lot_attribues
    fill_in "Nbr lot cession", with: @zone_entrepot_activite.nbr_lot_cession
    fill_in "Nbr lot concession", with: @zone_entrepot_activite.nbr_lot_concession
    fill_in "Nbr lots", with: @zone_entrepot_activite.nbr_lots
    fill_in "Nom zone", with: @zone_entrepot_activite.nom_zone
    fill_in "Num arrete creation", with: @zone_entrepot_activite.num_arrete_creation
    fill_in "Observation", with: @zone_entrepot_activite.observation
    fill_in "Superf cessible", with: @zone_entrepot_activite.superf_cessible
    fill_in "Superf total", with: @zone_entrepot_activite.superf_total
    fill_in "Superf vrd", with: @zone_entrepot_activite.superf_vrd
    fill_in "Type zone", with: @zone_entrepot_activite.type_zone
    fill_in "Wilaya", with: @zone_entrepot_activite.wilaya
    click_on "Update Zone entrepot activite"

    assert_text "Zone entrepot activite was successfully updated"
    click_on "Back"
  end

  test "destroying a Zone entrepot activite" do
    visit zone_entrepot_activites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zone entrepot activite was successfully destroyed"
  end
end
