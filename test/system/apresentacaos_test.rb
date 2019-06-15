require "application_system_test_case"

class ApresentacaosTest < ApplicationSystemTestCase
  setup do
    @apresentacao = apresentacaos(:one)
  end

  test "visiting the index" do
    visit apresentacaos_url
    assert_selector "h1", text: "Apresentacaos"
  end

  test "creating a Apresentacao" do
    visit apresentacaos_url
    click_on "New Apresentacao"

    fill_in "Disponiveis", with: @apresentacao.disponiveis
    fill_in "Horario", with: @apresentacao.horario
    fill_in "Ingressos total", with: @apresentacao.ingressos_total
    click_on "Create Apresentacao"

    assert_text "Apresentacao was successfully created"
    click_on "Back"
  end

  test "updating a Apresentacao" do
    visit apresentacaos_url
    click_on "Edit", match: :first

    fill_in "Disponiveis", with: @apresentacao.disponiveis
    fill_in "Horario", with: @apresentacao.horario
    fill_in "Ingressos total", with: @apresentacao.ingressos_total
    click_on "Update Apresentacao"

    assert_text "Apresentacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Apresentacao" do
    visit apresentacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apresentacao was successfully destroyed"
  end
end
