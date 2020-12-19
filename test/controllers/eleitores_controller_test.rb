require "test_helper"

class EleitoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eleitore = eleitores(:one)
  end

  test "should get index" do
    get eleitores_url
    assert_response :success
  end

  test "should get new" do
    get new_eleitore_url
    assert_response :success
  end

  test "should create eleitore" do
    assert_difference('Eleitore.count') do
      post eleitores_url, params: { eleitore: { nome: @eleitore.nome, string: @eleitore.string, string,: @eleitore.string,, titulo: @eleitore.titulo } }
    end

    assert_redirected_to eleitore_url(Eleitore.last)
  end

  test "should show eleitore" do
    get eleitore_url(@eleitore)
    assert_response :success
  end

  test "should get edit" do
    get edit_eleitore_url(@eleitore)
    assert_response :success
  end

  test "should update eleitore" do
    patch eleitore_url(@eleitore), params: { eleitore: { nome: @eleitore.nome, string: @eleitore.string, string,: @eleitore.string,, titulo: @eleitore.titulo } }
    assert_redirected_to eleitore_url(@eleitore)
  end

  test "should destroy eleitore" do
    assert_difference('Eleitore.count', -1) do
      delete eleitore_url(@eleitore)
    end

    assert_redirected_to eleitores_url
  end
end
