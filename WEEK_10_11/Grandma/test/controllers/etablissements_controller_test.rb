require 'test_helper'

class EtablissementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etablissement = etablissements(:one)
  end

  test "should get index" do
    get etablissements_url
    assert_response :success
  end

  test "should get new" do
    get new_etablissement_url
    assert_response :success
  end

  test "should create etablissement" do
    assert_difference('Etablissement.count') do
      post etablissements_url, params: { etablissement: { address: @etablissement.address, city: @etablissement.city, email: @etablissement.email, name: @etablissement.name, phone: @etablissement.phone, type: @etablissement.type, zip: @etablissement.zip } }
    end

    assert_redirected_to etablissement_url(Etablissement.last)
  end

  test "should show etablissement" do
    get etablissement_url(@etablissement)
    assert_response :success
  end

  test "should get edit" do
    get edit_etablissement_url(@etablissement)
    assert_response :success
  end

  test "should update etablissement" do
    patch etablissement_url(@etablissement), params: { etablissement: { address: @etablissement.address, city: @etablissement.city, email: @etablissement.email, name: @etablissement.name, phone: @etablissement.phone, type: @etablissement.type, zip: @etablissement.zip } }
    assert_redirected_to etablissement_url(@etablissement)
  end

  test "should destroy etablissement" do
    assert_difference('Etablissement.count', -1) do
      delete etablissement_url(@etablissement)
    end

    assert_redirected_to etablissements_url
  end
end
