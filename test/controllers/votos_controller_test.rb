require "test_helper"

class VotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voto = votos(:one)
  end

  test "should get index" do
    get votos_url
    assert_response :success
  end

  test "should get new" do
    get new_voto_url
    assert_response :success
  end

  test "should create voto" do
    assert_difference('Voto.count') do
      post votos_url, params: { voto: { candidato_id: @voto.candidato_id, eleitor_id: @voto.eleitor_id, int: @voto.int, references: @voto.references, references,: @voto.references, } }
    end

    assert_redirected_to voto_url(Voto.last)
  end

  test "should show voto" do
    get voto_url(@voto)
    assert_response :success
  end

  test "should get edit" do
    get edit_voto_url(@voto)
    assert_response :success
  end

  test "should update voto" do
    patch voto_url(@voto), params: { voto: { candidato_id: @voto.candidato_id, eleitor_id: @voto.eleitor_id, int: @voto.int, references: @voto.references, references,: @voto.references, } }
    assert_redirected_to voto_url(@voto)
  end

  test "should destroy voto" do
    assert_difference('Voto.count', -1) do
      delete voto_url(@voto)
    end

    assert_redirected_to votos_url
  end
end
