require "application_system_test_case"

class LotsTest < ApplicationSystemTestCase
  setup do
    @lot = lots(:one)
  end

  test "visiting the index" do
    visit lots_url
    assert_selector "h1", text: "Lots"
  end

  test "creating a Lot" do
    visit lots_url
    click_on "New Lot"

    fill_in "Activite", with: @lot.activite
    fill_in "Class Activite", with: @lot.class_activite
    fill_in "Date Act", with: @lot.date_act
    fill_in "Date Attribution", with: @lot.date_attribution
    fill_in "Date Resolution", with: @lot.date_resolution
    fill_in "Etat Avancement", with: @lot.etat_avancement
    fill_in "Investisseur", with: @lot.investisseur
    fill_in "Num Act", with: @lot.num_act
    fill_in "Num Lot", with: @lot.num_lot
    fill_in "Observation", with: @lot.observation
    fill_in "Situation Juridique", with: @lot.situation_juridique
    fill_in "Situation Physique", with: @lot.situation_physique
    fill_in "Type Lot", with: @lot.type_lot
    fill_in "Zone", with: @lot.zone
    click_on "Create Lot"

    assert_text "Lot was successfully created"
    click_on "Back"
  end

  test "updating a Lot" do
    visit lots_url
    click_on "Edit", match: :first

    fill_in "Activite", with: @lot.activite
    fill_in "Class Activite", with: @lot.class_activite
    fill_in "Date Act", with: @lot.date_act
    fill_in "Date Attribution", with: @lot.date_attribution
    fill_in "Date Resolution", with: @lot.date_resolution
    fill_in "Etat Avancement", with: @lot.etat_avancement
    fill_in "Investisseur", with: @lot.investisseur
    fill_in "Num Act", with: @lot.num_act
    fill_in "Num Lot", with: @lot.num_lot
    fill_in "Observation", with: @lot.observation
    fill_in "Situation Juridique", with: @lot.situation_juridique
    fill_in "Situation Physique", with: @lot.situation_physique
    fill_in "Type Lot", with: @lot.type_lot
    fill_in "Zone", with: @lot.zone
    click_on "Update Lot"

    assert_text "Lot was successfully updated"
    click_on "Back"
  end

  test "destroying a Lot" do
    visit lots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lot was successfully destroyed"
  end
end
