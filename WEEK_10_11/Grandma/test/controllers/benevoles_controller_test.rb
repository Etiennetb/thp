require 'test_helper'

class BenevolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @benevole = benevoles(:one)
  end

  test "should get index" do
    get benevoles_url
    assert_response :success
  end

  test "should get new" do
    get new_benevole_url
    assert_response :success
  end

  test "should create benevole" do
    assert_difference('Benevole.count') do
      post benevoles_url, params: { benevole: { address: @benevole.address, birthday: @benevole.birthday, city: @benevole.city, email: @benevole.email, firstname: @benevole.firstname, gender: @benevole.gender, lastname: @benevole.lastname, phone: @benevole.phone, zip: @benevole.zip } }
    end

    assert_redirected_to benevole_url(Benevole.last)
  end

  test "should show benevole" do
    get benevole_url(@benevole)
    assert_response :success
  end

  test "should get edit" do
    get edit_benevole_url(@benevole)
    assert_response :success
  end

  test "should update benevole" do
    patch benevole_url(@benevole), params: { benevole: { address: @benevole.address, birthday: @benevole.birthday, city: @benevole.city, email: @benevole.email, firstname: @benevole.firstname, gender: @benevole.gender, lastname: @benevole.lastname, phone: @benevole.phone, zip: @benevole.zip } }
    assert_redirected_to benevole_url(@benevole)
  end

  test "should destroy benevole" do
    assert_difference('Benevole.count', -1) do
      delete benevole_url(@benevole)
    end

    assert_redirected_to benevoles_url
  end
end
