require 'test_helper'

class ZoneIndustriellesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone_industrielle = zone_industrielles(:one)
  end

  test "should get index" do
    get zone_industrielles_url
    assert_response :success
  end

  test "should get new" do
    get new_zone_industrielle_url
    assert_response :success
  end

  test "should create zone_industrielle" do
    assert_difference('ZoneIndustrielle.count') do
      post zone_industrielles_url, params: { zone_industrielle: { code_zone: @zone_industrielle.code_zone, commune: @zone_industrielle.commune, dat_arrete_creation: @zone_industrielle.dat_arrete_creation, nbr_lot_attribues: @zone_industrielle.nbr_lot_attribues, nbr_lot_cession: @zone_industrielle.nbr_lot_cession, nbr_lot_concession: @zone_industrielle.nbr_lot_concession, nbr_lots: @zone_industrielle.nbr_lots, nom_zone: @zone_industrielle.nom_zone, num_arrete_creation: @zone_industrielle.num_arrete_creation, observation: @zone_industrielle.observation, superf_cessible: @zone_industrielle.superf_cessible, superf_total: @zone_industrielle.superf_total, superf_vrd: @zone_industrielle.superf_vrd, type_zone: @zone_industrielle.type_zone, wilaya: @zone_industrielle.wilaya } }
    end

    assert_redirected_to zone_industrielle_url(ZoneIndustrielle.last)
  end

  test "should show zone_industrielle" do
    get zone_industrielle_url(@zone_industrielle)
    assert_response :success
  end

  test "should get edit" do
    get edit_zone_industrielle_url(@zone_industrielle)
    assert_response :success
  end

  test "should update zone_industrielle" do
    patch zone_industrielle_url(@zone_industrielle), params: { zone_industrielle: { code_zone: @zone_industrielle.code_zone, commune: @zone_industrielle.commune, dat_arrete_creation: @zone_industrielle.dat_arrete_creation, nbr_lot_attribues: @zone_industrielle.nbr_lot_attribues, nbr_lot_cession: @zone_industrielle.nbr_lot_cession, nbr_lot_concession: @zone_industrielle.nbr_lot_concession, nbr_lots: @zone_industrielle.nbr_lots, nom_zone: @zone_industrielle.nom_zone, num_arrete_creation: @zone_industrielle.num_arrete_creation, observation: @zone_industrielle.observation, superf_cessible: @zone_industrielle.superf_cessible, superf_total: @zone_industrielle.superf_total, superf_vrd: @zone_industrielle.superf_vrd, type_zone: @zone_industrielle.type_zone, wilaya: @zone_industrielle.wilaya } }
    assert_redirected_to zone_industrielle_url(@zone_industrielle)
  end

  test "should destroy zone_industrielle" do
    assert_difference('ZoneIndustrielle.count', -1) do
      delete zone_industrielle_url(@zone_industrielle)
    end

    assert_redirected_to zone_industrielles_url
  end
end
