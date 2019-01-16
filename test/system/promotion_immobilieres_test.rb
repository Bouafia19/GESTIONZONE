require "application_system_test_case"

class PromotionImmobilieresTest < ApplicationSystemTestCase
  setup do
    @promotion_immobiliere = promotion_immobilieres(:one)
  end

  test "visiting the index" do
    visit promotion_immobilieres_url
    assert_selector "h1", text: "Promotion Immobilieres"
  end

  test "creating a Promotion immobiliere" do
    visit promotion_immobilieres_url
    click_on "New Promotion Immobiliere"

    fill_in "Code Zone", with: @promotion_immobiliere.code_zone
    fill_in "Commune", with: @promotion_immobiliere.commune
    fill_in "Dat Arrete Creation", with: @promotion_immobiliere.dat_arrete_creation
    fill_in "Nbr Lot Attribues", with: @promotion_immobiliere.nbr_lot_attribues
    fill_in "Nbr Lot Cession", with: @promotion_immobiliere.nbr_lot_cession
    fill_in "Nbr Lot Concession", with: @promotion_immobiliere.nbr_lot_concession
    fill_in "Nbr Lots", with: @promotion_immobiliere.nbr_lots
    fill_in "Nom Zone", with: @promotion_immobiliere.nom_zone
    fill_in "Num Arrete Creation", with: @promotion_immobiliere.num_arrete_creation
    fill_in "Observation", with: @promotion_immobiliere.observation
    fill_in "Superf Cessible", with: @promotion_immobiliere.superf_cessible
    fill_in "Superf Total", with: @promotion_immobiliere.superf_total
    fill_in "Superf Vrd", with: @promotion_immobiliere.superf_vrd
    fill_in "Type Zone", with: @promotion_immobiliere.type_zone
    fill_in "Wilaya", with: @promotion_immobiliere.wilaya
    click_on "Create Promotion immobiliere"

    assert_text "Promotion immobiliere was successfully created"
    click_on "Back"
  end

  test "updating a Promotion immobiliere" do
    visit promotion_immobilieres_url
    click_on "Edit", match: :first

    fill_in "Code Zone", with: @promotion_immobiliere.code_zone
    fill_in "Commune", with: @promotion_immobiliere.commune
    fill_in "Dat Arrete Creation", with: @promotion_immobiliere.dat_arrete_creation
    fill_in "Nbr Lot Attribues", with: @promotion_immobiliere.nbr_lot_attribues
    fill_in "Nbr Lot Cession", with: @promotion_immobiliere.nbr_lot_cession
    fill_in "Nbr Lot Concession", with: @promotion_immobiliere.nbr_lot_concession
    fill_in "Nbr Lots", with: @promotion_immobiliere.nbr_lots
    fill_in "Nom Zone", with: @promotion_immobiliere.nom_zone
    fill_in "Num Arrete Creation", with: @promotion_immobiliere.num_arrete_creation
    fill_in "Observation", with: @promotion_immobiliere.observation
    fill_in "Superf Cessible", with: @promotion_immobiliere.superf_cessible
    fill_in "Superf Total", with: @promotion_immobiliere.superf_total
    fill_in "Superf Vrd", with: @promotion_immobiliere.superf_vrd
    fill_in "Type Zone", with: @promotion_immobiliere.type_zone
    fill_in "Wilaya", with: @promotion_immobiliere.wilaya
    click_on "Update Promotion immobiliere"

    assert_text "Promotion immobiliere was successfully updated"
    click_on "Back"
  end

  test "destroying a Promotion immobiliere" do
    visit promotion_immobilieres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Promotion immobiliere was successfully destroyed"
  end
end
