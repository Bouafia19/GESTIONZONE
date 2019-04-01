require 'test_helper'

class ZoneEntrepotActivitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone_entrepot_activite = zone_entrepot_activites(:one)
  end

  test "should get index" do
    get zone_entrepot_activites_url
    assert_response :success
  end

  test "should get new" do
    get new_zone_entrepot_activite_url
    assert_response :success
  end

  test "should create zone_entrepot_activite" do
    assert_difference('ZoneEntrepotActivite.count') do
      post zone_entrepot_activites_url, params: { zone_entrepot_activite: { code_zone: @zone_entrepot_activite.code_zone, commune: @zone_entrepot_activite.commune, dat_arrete_creation: @zone_entrepot_activite.dat_arrete_creation, nbr_lot_attribues: @zone_entrepot_activite.nbr_lot_attribues, nbr_lot_cession: @zone_entrepot_activite.nbr_lot_cession, nbr_lot_concession: @zone_entrepot_activite.nbr_lot_concession, nbr_lots: @zone_entrepot_activite.nbr_lots, nom_zone: @zone_entrepot_activite.nom_zone, num_arrete_creation: @zone_entrepot_activite.num_arrete_creation, observation: @zone_entrepot_activite.observation, superf_cessible: @zone_entrepot_activite.superf_cessible, superf_total: @zone_entrepot_activite.superf_total, superf_vrd: @zone_entrepot_activite.superf_vrd, type_zone: @zone_entrepot_activite.type_zone, wilaya: @zone_entrepot_activite.wilaya } }
    end

    assert_redirected_to zone_entrepot_activite_url(ZoneEntrepotActivite.last)
  end

  test "should show zone_entrepot_activite" do
    get zone_entrepot_activite_url(@zone_entrepot_activite)
    assert_response :success
  end

  test "should get edit" do
    get edit_zone_entrepot_activite_url(@zone_entrepot_activite)
    assert_response :success
  end

  test "should update zone_entrepot_activite" do
    patch zone_entrepot_activite_url(@zone_entrepot_activite), params: { zone_entrepot_activite: { code_zone: @zone_entrepot_activite.code_zone, commune: @zone_entrepot_activite.commune, dat_arrete_creation: @zone_entrepot_activite.dat_arrete_creation, nbr_lot_attribues: @zone_entrepot_activite.nbr_lot_attribues, nbr_lot_cession: @zone_entrepot_activite.nbr_lot_cession, nbr_lot_concession: @zone_entrepot_activite.nbr_lot_concession, nbr_lots: @zone_entrepot_activite.nbr_lots, nom_zone: @zone_entrepot_activite.nom_zone, num_arrete_creation: @zone_entrepot_activite.num_arrete_creation, observation: @zone_entrepot_activite.observation, superf_cessible: @zone_entrepot_activite.superf_cessible, superf_total: @zone_entrepot_activite.superf_total, superf_vrd: @zone_entrepot_activite.superf_vrd, type_zone: @zone_entrepot_activite.type_zone, wilaya: @zone_entrepot_activite.wilaya } }
    assert_redirected_to zone_entrepot_activite_url(@zone_entrepot_activite)
  end

  test "should destroy zone_entrepot_activite" do
    assert_difference('ZoneEntrepotActivite.count', -1) do
      delete zone_entrepot_activite_url(@zone_entrepot_activite)
    end

    assert_redirected_to zone_entrepot_activites_url
  end
end
