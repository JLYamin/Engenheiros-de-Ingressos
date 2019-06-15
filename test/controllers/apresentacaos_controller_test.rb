require 'test_helper'

class ApresentacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apresentacao = apresentacaos(:one)
  end

  test "should get index" do
    get apresentacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_apresentacao_url
    assert_response :success
  end

  test "should create apresentacao" do
    assert_difference('Apresentacao.count') do
      post apresentacaos_url, params: { apresentacao: { disponiveis: @apresentacao.disponiveis, horario: @apresentacao.horario, ingressos_total: @apresentacao.ingressos_total } }
    end

    assert_redirected_to apresentacao_url(Apresentacao.last)
  end

  test "should show apresentacao" do
    get apresentacao_url(@apresentacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_apresentacao_url(@apresentacao)
    assert_response :success
  end

  test "should update apresentacao" do
    patch apresentacao_url(@apresentacao), params: { apresentacao: { disponiveis: @apresentacao.disponiveis, horario: @apresentacao.horario, ingressos_total: @apresentacao.ingressos_total } }
    assert_redirected_to apresentacao_url(@apresentacao)
  end

  test "should destroy apresentacao" do
    assert_difference('Apresentacao.count', -1) do
      delete apresentacao_url(@apresentacao)
    end

    assert_redirected_to apresentacaos_url
  end
end
