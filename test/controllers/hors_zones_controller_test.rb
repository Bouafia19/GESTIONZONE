require 'test_helper'

class HorsZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hors_zone = hors_zones(:one)
  end

  test "should get index" do
    get hors_zones_url
    assert_response :success
  end

  test "should get new" do
    get new_hors_zone_url
    assert_response :success
  end

  test "should create hors_zone" do
    assert_difference('HorsZone.count') do
      post hors_zones_url, params: { hors_zone: { code_zone: @hors_zone.code_zone, commune: @hors_zone.commune, dat_arrete_creation: @hors_zone.dat_arrete_creation, nbr_lot_attribues: @hors_zone.nbr_lot_attribues, nbr_lot_cession: @hors_zone.nbr_lot_cession, nbr_lot_concession: @hors_zone.nbr_lot_concession, nbr_lots: @hors_zone.nbr_lots, nom_zone: @hors_zone.nom_zone, num_arrete_creation: @hors_zone.num_arrete_creation, observation: @hors_zone.observation, superf_cessible: @hors_zone.superf_cessible, superf_total: @hors_zone.superf_total, superf_vrd: @hors_zone.superf_vrd, type_zone: @hors_zone.type_zone, wilaya: @hors_zone.wilaya } }
    end

    assert_redirected_to hors_zone_url(HorsZone.last)
  end

  test "should show hors_zone" do
    get hors_zone_url(@hors_zone)
    assert_response :success
  end

  test "should get edit" do
    get edit_hors_zone_url(@hors_zone)
    assert_response :success
  end

  test "should update hors_zone" do
    patch hors_zone_url(@hors_zone), params: { hors_zone: { code_zone: @hors_zone.code_zone, commune: @hors_zone.commune, dat_arrete_creation: @hors_zone.dat_arrete_creation, nbr_lot_attribues: @hors_zone.nbr_lot_attribues, nbr_lot_cession: @hors_zone.nbr_lot_cession, nbr_lot_concession: @hors_zone.nbr_lot_concession, nbr_lots: @hors_zone.nbr_lots, nom_zone: @hors_zone.nom_zone, num_arrete_creation: @hors_zone.num_arrete_creation, observation: @hors_zone.observation, superf_cessible: @hors_zone.superf_cessible, superf_total: @hors_zone.superf_total, superf_vrd: @hors_zone.superf_vrd, type_zone: @hors_zone.type_zone, wilaya: @hors_zone.wilaya } }
    assert_redirected_to hors_zone_url(@hors_zone)
  end

  test "should destroy hors_zone" do
    assert_difference('HorsZone.count', -1) do
      delete hors_zone_url(@hors_zone)
    end

    assert_redirected_to hors_zones_url
  end
end
