require "application_system_test_case"

class ClassesEventosTest < ApplicationSystemTestCase
  setup do
    @classes_evento = classes_eventos(:one)
  end

  test "visiting the index" do
    visit classes_eventos_url
    assert_selector "h1", text: "Classes Eventos"
  end

  test "creating a Classes evento" do
    visit classes_eventos_url
    click_on "New Classes Evento"

    fill_in "Classe", with: @classes_evento.classe
    click_on "Create Classes evento"

    assert_text "Classes evento was successfully created"
    click_on "Back"
  end

  test "updating a Classes evento" do
    visit classes_eventos_url
    click_on "Edit", match: :first

    fill_in "Classe", with: @classes_evento.classe
    click_on "Update Classes evento"

    assert_text "Classes evento was successfully updated"
    click_on "Back"
  end

  test "destroying a Classes evento" do
    visit classes_eventos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Classes evento was successfully destroyed"
  end
end
