require 'test_helper'

class AnciennesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ancienne = anciennes(:one)
  end

  test "should get index" do
    get anciennes_url
    assert_response :success
  end

  test "should get new" do
    get new_ancienne_url
    assert_response :success
  end

  test "should create ancienne" do
    assert_difference('Ancienne.count') do
      post anciennes_url, params: { ancienne: { geom: @ancienne.geom, n_de_lot: @ancienne.n_de_lot, n_dossier: @ancienne.n_dossier, r_socia_ar: @ancienne.r_socia_ar, r_socia_fr: @ancienne.r_socia_fr } }
    end

    assert_redirected_to ancienne_url(Ancienne.last)
  end

  test "should show ancienne" do
    get ancienne_url(@ancienne)
    assert_response :success
  end

  test "should get edit" do
    get edit_ancienne_url(@ancienne)
    assert_response :success
  end

  test "should update ancienne" do
    patch ancienne_url(@ancienne), params: { ancienne: { geom: @ancienne.geom, n_de_lot: @ancienne.n_de_lot, n_dossier: @ancienne.n_dossier, r_socia_ar: @ancienne.r_socia_ar, r_socia_fr: @ancienne.r_socia_fr } }
    assert_redirected_to ancienne_url(@ancienne)
  end

  test "should destroy ancienne" do
    assert_difference('Ancienne.count', -1) do
      delete ancienne_url(@ancienne)
    end

    assert_redirected_to anciennes_url
  end
end
