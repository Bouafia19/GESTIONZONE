require 'test_helper'

class PromotionImmobilieresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promotion_immobiliere = promotion_immobilieres(:one)
  end

  test "should get index" do
    get promotion_immobilieres_url
    assert_response :success
  end

  test "should get new" do
    get new_promotion_immobiliere_url
    assert_response :success
  end

  test "should create promotion_immobiliere" do
    assert_difference('PromotionImmobiliere.count') do
      post promotion_immobilieres_url, params: { promotion_immobiliere: { code_zone: @promotion_immobiliere.code_zone, commune: @promotion_immobiliere.commune, dat_arrete_creation: @promotion_immobiliere.dat_arrete_creation, nbr_lot_attribues: @promotion_immobiliere.nbr_lot_attribues, nbr_lot_cession: @promotion_immobiliere.nbr_lot_cession, nbr_lot_concession: @promotion_immobiliere.nbr_lot_concession, nbr_lots: @promotion_immobiliere.nbr_lots, nom_zone: @promotion_immobiliere.nom_zone, num_arrete_creation: @promotion_immobiliere.num_arrete_creation, observation: @promotion_immobiliere.observation, superf_cessible: @promotion_immobiliere.superf_cessible, superf_total: @promotion_immobiliere.superf_total, superf_vrd: @promotion_immobiliere.superf_vrd, type_zone: @promotion_immobiliere.type_zone, wilaya: @promotion_immobiliere.wilaya } }
    end

    assert_redirected_to promotion_immobiliere_url(PromotionImmobiliere.last)
  end

  test "should show promotion_immobiliere" do
    get promotion_immobiliere_url(@promotion_immobiliere)
    assert_response :success
  end

  test "should get edit" do
    get edit_promotion_immobiliere_url(@promotion_immobiliere)
    assert_response :success
  end

  test "should update promotion_immobiliere" do
    patch promotion_immobiliere_url(@promotion_immobiliere), params: { promotion_immobiliere: { code_zone: @promotion_immobiliere.code_zone, commune: @promotion_immobiliere.commune, dat_arrete_creation: @promotion_immobiliere.dat_arrete_creation, nbr_lot_attribues: @promotion_immobiliere.nbr_lot_attribues, nbr_lot_cession: @promotion_immobiliere.nbr_lot_cession, nbr_lot_concession: @promotion_immobiliere.nbr_lot_concession, nbr_lots: @promotion_immobiliere.nbr_lots, nom_zone: @promotion_immobiliere.nom_zone, num_arrete_creation: @promotion_immobiliere.num_arrete_creation, observation: @promotion_immobiliere.observation, superf_cessible: @promotion_immobiliere.superf_cessible, superf_total: @promotion_immobiliere.superf_total, superf_vrd: @promotion_immobiliere.superf_vrd, type_zone: @promotion_immobiliere.type_zone, wilaya: @promotion_immobiliere.wilaya } }
    assert_redirected_to promotion_immobiliere_url(@promotion_immobiliere)
  end

  test "should destroy promotion_immobiliere" do
    assert_difference('PromotionImmobiliere.count', -1) do
      delete promotion_immobiliere_url(@promotion_immobiliere)
    end

    assert_redirected_to promotion_immobilieres_url
  end
end
