require 'test_helper'

class ZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone = zones(:one)
  end

  test "should get index" do
    get zones_url
    assert_response :success
  end

  test "should get new" do
    get new_zone_url
    assert_response :success
  end

  test "should create zone" do
    assert_difference('Zone.count') do
      post zones_url, params: { zone: { code_zone: @zone.code_zone, commune: @zone.commune, dat_arrete_creation: @zone.dat_arrete_creation, nbr_lot_attribues: @zone.nbr_lot_attribues, nbr_lot_cession: @zone.nbr_lot_cession, nbr_lot_concession: @zone.nbr_lot_concession, nbr_lots: @zone.nbr_lots, nom_zone: @zone.nom_zone, num_arrete_creation: @zone.num_arrete_creation, observation: @zone.observation, superf_cessible: @zone.superf_cessible, superf_total: @zone.superf_total, superf_vrd: @zone.superf_vrd, type: @zone.type, wilaya: @zone.wilaya } }
    end

    assert_redirected_to zone_url(Zone.last)
  end

  test "should show zone" do
    get zone_url(@zone)
    assert_response :success
  end

  test "should get edit" do
    get edit_zone_url(@zone)
    assert_response :success
  end

  test "should update zone" do
    patch zone_url(@zone), params: { zone: { code_zone: @zone.code_zone, commune: @zone.commune, dat_arrete_creation: @zone.dat_arrete_creation, nbr_lot_attribues: @zone.nbr_lot_attribues, nbr_lot_cession: @zone.nbr_lot_cession, nbr_lot_concession: @zone.nbr_lot_concession, nbr_lots: @zone.nbr_lots, nom_zone: @zone.nom_zone, num_arrete_creation: @zone.num_arrete_creation, observation: @zone.observation, superf_cessible: @zone.superf_cessible, superf_total: @zone.superf_total, superf_vrd: @zone.superf_vrd, type: @zone.type, wilaya: @zone.wilaya } }
    assert_redirected_to zone_url(@zone)
  end

  test "should destroy zone" do
    assert_difference('Zone.count', -1) do
      delete zone_url(@zone)
    end

    assert_redirected_to zones_url
  end
end
