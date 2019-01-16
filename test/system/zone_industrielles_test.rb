require "application_system_test_case"

class ZoneIndustriellesTest < ApplicationSystemTestCase
  setup do
    @zone_industrielle = zone_industrielles(:one)
  end

  test "visiting the index" do
    visit zone_industrielles_url
    assert_selector "h1", text: "Zone Industrielles"
  end

  test "creating a Zone industrielle" do
    visit zone_industrielles_url
    click_on "New Zone Industrielle"

    fill_in "Code Zone", with: @zone_industrielle.code_zone
    fill_in "Commune", with: @zone_industrielle.commune
    fill_in "Dat Arrete Creation", with: @zone_industrielle.dat_arrete_creation
    fill_in "Nbr Lot Attribues", with: @zone_industrielle.nbr_lot_attribues
    fill_in "Nbr Lot Cession", with: @zone_industrielle.nbr_lot_cession
    fill_in "Nbr Lot Concession", with: @zone_industrielle.nbr_lot_concession
    fill_in "Nbr Lots", with: @zone_industrielle.nbr_lots
    fill_in "Nom Zone", with: @zone_industrielle.nom_zone
    fill_in "Num Arrete Creation", with: @zone_industrielle.num_arrete_creation
    fill_in "Observation", with: @zone_industrielle.observation
    fill_in "Superf Cessible", with: @zone_industrielle.superf_cessible
    fill_in "Superf Total", with: @zone_industrielle.superf_total
    fill_in "Superf Vrd", with: @zone_industrielle.superf_vrd
    fill_in "Type Zone", with: @zone_industrielle.type_zone
    fill_in "Wilaya", with: @zone_industrielle.wilaya
    click_on "Create Zone industrielle"

    assert_text "Zone industrielle was successfully created"
    click_on "Back"
  end

  test "updating a Zone industrielle" do
    visit zone_industrielles_url
    click_on "Edit", match: :first

    fill_in "Code Zone", with: @zone_industrielle.code_zone
    fill_in "Commune", with: @zone_industrielle.commune
    fill_in "Dat Arrete Creation", with: @zone_industrielle.dat_arrete_creation
    fill_in "Nbr Lot Attribues", with: @zone_industrielle.nbr_lot_attribues
    fill_in "Nbr Lot Cession", with: @zone_industrielle.nbr_lot_cession
    fill_in "Nbr Lot Concession", with: @zone_industrielle.nbr_lot_concession
    fill_in "Nbr Lots", with: @zone_industrielle.nbr_lots
    fill_in "Nom Zone", with: @zone_industrielle.nom_zone
    fill_in "Num Arrete Creation", with: @zone_industrielle.num_arrete_creation
    fill_in "Observation", with: @zone_industrielle.observation
    fill_in "Superf Cessible", with: @zone_industrielle.superf_cessible
    fill_in "Superf Total", with: @zone_industrielle.superf_total
    fill_in "Superf Vrd", with: @zone_industrielle.superf_vrd
    fill_in "Type Zone", with: @zone_industrielle.type_zone
    fill_in "Wilaya", with: @zone_industrielle.wilaya
    click_on "Update Zone industrielle"

    assert_text "Zone industrielle was successfully updated"
    click_on "Back"
  end

  test "destroying a Zone industrielle" do
    visit zone_industrielles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zone industrielle was successfully destroyed"
  end
end
