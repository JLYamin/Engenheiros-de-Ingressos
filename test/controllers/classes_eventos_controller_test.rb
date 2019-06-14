require 'test_helper'

class ClassesEventosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classes_evento = classes_eventos(:one)
  end

  test "should get index" do
    get classes_eventos_url
    assert_response :success
  end

  test "should get new" do
    get new_classes_evento_url
    assert_response :success
  end

  test "should create classes_evento" do
    assert_difference('ClassesEvento.count') do
      post classes_eventos_url, params: { classes_evento: { classe: @classes_evento.classe } }
    end

    assert_redirected_to classes_evento_url(ClassesEvento.last)
  end

  test "should show classes_evento" do
    get classes_evento_url(@classes_evento)
    assert_response :success
  end

  test "should get edit" do
    get edit_classes_evento_url(@classes_evento)
    assert_response :success
  end

  test "should update classes_evento" do
    patch classes_evento_url(@classes_evento), params: { classes_evento: { classe: @classes_evento.classe } }
    assert_redirected_to classes_evento_url(@classes_evento)
  end

  test "should destroy classes_evento" do
    assert_difference('ClassesEvento.count', -1) do
      delete classes_evento_url(@classes_evento)
    end

    assert_redirected_to classes_eventos_url
  end
end
