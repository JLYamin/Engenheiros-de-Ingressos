require "application_system_test_case"

class FaixaEtariaTest < ApplicationSystemTestCase
  setup do
    @faixa_etarium = faixa_etaria(:one)
  end

  test "visiting the index" do
    visit faixa_etaria_url
    assert_selector "h1", text: "Faixa Etaria"
  end

  test "creating a Faixa etarium" do
    visit faixa_etaria_url
    click_on "New Faixa Etarium"

    fill_in "Description", with: @faixa_etarium.description
    fill_in "Faixa etaria", with: @faixa_etarium.faixa_etaria
    click_on "Create Faixa etarium"

    assert_text "Faixa etarium was successfully created"
    click_on "Back"
  end

  test "updating a Faixa etarium" do
    visit faixa_etaria_url
    click_on "Edit", match: :first

    fill_in "Description", with: @faixa_etarium.description
    fill_in "Faixa etaria", with: @faixa_etarium.faixa_etaria
    click_on "Update Faixa etarium"

    assert_text "Faixa etarium was successfully updated"
    click_on "Back"
  end

  test "destroying a Faixa etarium" do
    visit faixa_etaria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faixa etarium was successfully destroyed"
  end
end
