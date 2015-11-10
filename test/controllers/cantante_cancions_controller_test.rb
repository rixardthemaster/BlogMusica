require 'test_helper'

class CantanteCancionsControllerTest < ActionController::TestCase
  setup do
    @cantante_cancion = cantante_cancions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cantante_cancions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cantante_cancion" do
    assert_difference('CantanteCancion.count') do
      post :create, cantante_cancion: { cancion_id: @cantante_cancion.cancion_id, cantante_id: @cantante_cancion.cantante_id }
    end

    assert_redirected_to cantante_cancion_path(assigns(:cantante_cancion))
  end

  test "should show cantante_cancion" do
    get :show, id: @cantante_cancion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cantante_cancion
    assert_response :success
  end

  test "should update cantante_cancion" do
    patch :update, id: @cantante_cancion, cantante_cancion: { cancion_id: @cantante_cancion.cancion_id, cantante_id: @cantante_cancion.cantante_id }
    assert_redirected_to cantante_cancion_path(assigns(:cantante_cancion))
  end

  test "should destroy cantante_cancion" do
    assert_difference('CantanteCancion.count', -1) do
      delete :destroy, id: @cantante_cancion
    end

    assert_redirected_to cantante_cancions_path
  end
end
