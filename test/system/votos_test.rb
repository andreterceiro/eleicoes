require "application_system_test_case"

class VotosTest < ApplicationSystemTestCase
  setup do
    @voto = votos(:one)
  end

  test "visiting the index" do
    visit votos_url
    assert_selector "h1", text: "Votos"
  end

  test "creating a Voto" do
    visit votos_url
    click_on "New Voto"

    fill_in "Candidato", with: @voto.candidato_id
    fill_in "Eleitor", with: @voto.eleitor_id
    fill_in "Int", with: @voto.int
    fill_in "References", with: @voto.references
    fill_in "References,", with: @voto.references,
    click_on "Create Voto"

    assert_text "Voto was successfully created"
    click_on "Back"
  end

  test "updating a Voto" do
    visit votos_url
    click_on "Edit", match: :first

    fill_in "Candidato", with: @voto.candidato_id
    fill_in "Eleitor", with: @voto.eleitor_id
    fill_in "Int", with: @voto.int
    fill_in "References", with: @voto.references
    fill_in "References,", with: @voto.references,
    click_on "Update Voto"

    assert_text "Voto was successfully updated"
    click_on "Back"
  end

  test "destroying a Voto" do
    visit votos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voto was successfully destroyed"
  end
end
