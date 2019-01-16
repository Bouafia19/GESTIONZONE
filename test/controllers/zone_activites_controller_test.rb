require 'test_helper'

class ZoneActivitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone_activite = zone_activites(:one)
  end

  test "should get index" do
    get zone_activites_url
    assert_response :success
  end

  test "should get new" do
    get new_zone_activite_url
    assert_response :success
  end

  test "should create zone_activite" do
    assert_difference('ZoneActivite.count') do
      post zone_activites_url, params: { zone_activite: { code_zone: @zone_activite.code_zone, commune: @zone_activite.commune, dat_arrete_creation: @zone_activite.dat_arrete_creation, nbr_lot_attribues: @zone_activite.nbr_lot_attribues, nbr_lot_cession: @zone_activite.nbr_lot_cession, nbr_lot_concession: @zone_activite.nbr_lot_concession, nbr_lots: @zone_activite.nbr_lots, nom_zone: @zone_activite.nom_zone, num_arrete_creation: @zone_activite.num_arrete_creation, observation: @zone_activite.observation, superf_cessible: @zone_activite.superf_cessible, superf_total: @zone_activite.superf_total, superf_vrd: @zone_activite.superf_vrd, type_zone: @zone_activite.type_zone, wilaya: @zone_activite.wilaya } }
    end

    assert_redirected_to zone_activite_url(ZoneActivite.last)
  end

  test "should show zone_activite" do
    get zone_activite_url(@zone_activite)
    assert_response :success
  end

  test "should get edit" do
    get edit_zone_activite_url(@zone_activite)
    assert_response :success
  end

  test "should update zone_activite" do
    patch zone_activite_url(@zone_activite), params: { zone_activite: { code_zone: @zone_activite.code_zone, commune: @zone_activite.commune, dat_arrete_creation: @zone_activite.dat_arrete_creation, nbr_lot_attribues: @zone_activite.nbr_lot_attribues, nbr_lot_cession: @zone_activite.nbr_lot_cession, nbr_lot_concession: @zone_activite.nbr_lot_concession, nbr_lots: @zone_activite.nbr_lots, nom_zone: @zone_activite.nom_zone, num_arrete_creation: @zone_activite.num_arrete_creation, observation: @zone_activite.observation, superf_cessible: @zone_activite.superf_cessible, superf_total: @zone_activite.superf_total, superf_vrd: @zone_activite.superf_vrd, type_zone: @zone_activite.type_zone, wilaya: @zone_activite.wilaya } }
    assert_redirected_to zone_activite_url(@zone_activite)
  end

  test "should destroy zone_activite" do
    assert_difference('ZoneActivite.count', -1) do
      delete zone_activite_url(@zone_activite)
    end

    assert_redirected_to zone_activites_url
  end
end
