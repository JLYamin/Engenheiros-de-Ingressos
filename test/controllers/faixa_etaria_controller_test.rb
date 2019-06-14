require 'test_helper'

class FaixaEtariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faixa_etarium = faixa_etaria(:one)
  end

  test "should get index" do
    get faixa_etaria_url
    assert_response :success
  end

  test "should get new" do
    get new_faixa_etarium_url
    assert_response :success
  end

  test "should create faixa_etarium" do
    assert_difference('FaixaEtarium.count') do
      post faixa_etaria_url, params: { faixa_etarium: { description: @faixa_etarium.description, faixa_etaria: @faixa_etarium.faixa_etaria } }
    end

    assert_redirected_to faixa_etarium_url(FaixaEtarium.last)
  end

  test "should show faixa_etarium" do
    get faixa_etarium_url(@faixa_etarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_faixa_etarium_url(@faixa_etarium)
    assert_response :success
  end

  test "should update faixa_etarium" do
    patch faixa_etarium_url(@faixa_etarium), params: { faixa_etarium: { description: @faixa_etarium.description, faixa_etaria: @faixa_etarium.faixa_etaria } }
    assert_redirected_to faixa_etarium_url(@faixa_etarium)
  end

  test "should destroy faixa_etarium" do
    assert_difference('FaixaEtarium.count', -1) do
      delete faixa_etarium_url(@faixa_etarium)
    end

    assert_redirected_to faixa_etaria_url
  end
end
