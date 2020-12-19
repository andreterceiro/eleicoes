require "application_system_test_case"

class EleitoresTest < ApplicationSystemTestCase
  setup do
    @eleitore = eleitores(:one)
  end

  test "visiting the index" do
    visit eleitores_url
    assert_selector "h1", text: "Eleitores"
  end

  test "creating a Eleitore" do
    visit eleitores_url
    click_on "New Eleitore"

    fill_in "Nome", with: @eleitore.nome
    fill_in "String", with: @eleitore.string
    fill_in "String,", with: @eleitore.string,
    fill_in "Titulo", with: @eleitore.titulo
    click_on "Create Eleitore"

    assert_text "Eleitore was successfully created"
    click_on "Back"
  end

  test "updating a Eleitore" do
    visit eleitores_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @eleitore.nome
    fill_in "String", with: @eleitore.string
    fill_in "String,", with: @eleitore.string,
    fill_in "Titulo", with: @eleitore.titulo
    click_on "Update Eleitore"

    assert_text "Eleitore was successfully updated"
    click_on "Back"
  end

  test "destroying a Eleitore" do
    visit eleitores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eleitore was successfully destroyed"
  end
end
