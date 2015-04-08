require 'test_helper'

class LugarNacimientosControllerTest < ActionController::TestCase
  setup do
    @lugar_nacimiento = lugar_nacimientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lugar_nacimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lugar_nacimiento" do
    assert_difference('LugarNacimiento.count') do
      post :create, lugar_nacimiento: { nombre: @lugar_nacimiento.nombre, nombre_centro_poblado: @lugar_nacimiento.nombre_centro_poblado, nombre_departamento: @lugar_nacimiento.nombre_departamento, nombre_municipio: @lugar_nacimiento.nombre_municipio }
    end

    assert_redirected_to lugar_nacimiento_path(assigns(:lugar_nacimiento))
  end

  test "should show lugar_nacimiento" do
    get :show, id: @lugar_nacimiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lugar_nacimiento
    assert_response :success
  end

  test "should update lugar_nacimiento" do
    patch :update, id: @lugar_nacimiento, lugar_nacimiento: { nombre: @lugar_nacimiento.nombre, nombre_centro_poblado: @lugar_nacimiento.nombre_centro_poblado, nombre_departamento: @lugar_nacimiento.nombre_departamento, nombre_municipio: @lugar_nacimiento.nombre_municipio }
    assert_redirected_to lugar_nacimiento_path(assigns(:lugar_nacimiento))
  end

  test "should destroy lugar_nacimiento" do
    assert_difference('LugarNacimiento.count', -1) do
      delete :destroy, id: @lugar_nacimiento
    end

    assert_redirected_to lugar_nacimientos_path
  end
end
