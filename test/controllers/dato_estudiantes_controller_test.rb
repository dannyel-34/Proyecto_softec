require 'test_helper'

class DatoEstudiantesControllerTest < ActionController::TestCase
  setup do
    @dato_estudiante = dato_estudiantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dato_estudiantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dato_estudiante" do
    assert_difference('DatoEstudiante.count') do
      post :create, dato_estudiante: { apellido: @dato_estudiante.apellido, celular: @dato_estudiante.celular, codigo: @dato_estudiante.codigo, curso: @dato_estudiante.curso, direccion: @dato_estudiante.direccion, doc_identidad: @dato_estudiante.doc_identidad, genero: @dato_estudiante.genero, grado: @dato_estudiante.grado, mail: @dato_estudiante.mail, municipio_id: @dato_estudiante.municipio_id, nombre: @dato_estudiante.nombre, pais_id: @dato_estudiante.pais_id, telefono: @dato_estudiante.telefono }
    end

    assert_redirected_to dato_estudiante_path(assigns(:dato_estudiante))
  end

  test "should show dato_estudiante" do
    get :show, id: @dato_estudiante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dato_estudiante
    assert_response :success
  end

  test "should update dato_estudiante" do
    patch :update, id: @dato_estudiante, dato_estudiante: { apellido: @dato_estudiante.apellido, celular: @dato_estudiante.celular, codigo: @dato_estudiante.codigo, curso: @dato_estudiante.curso, direccion: @dato_estudiante.direccion, doc_identidad: @dato_estudiante.doc_identidad, genero: @dato_estudiante.genero, grado: @dato_estudiante.grado, mail: @dato_estudiante.mail, municipio_id: @dato_estudiante.municipio_id, nombre: @dato_estudiante.nombre, pais_id: @dato_estudiante.pais_id, telefono: @dato_estudiante.telefono }
    assert_redirected_to dato_estudiante_path(assigns(:dato_estudiante))
  end

  test "should destroy dato_estudiante" do
    assert_difference('DatoEstudiante.count', -1) do
      delete :destroy, id: @dato_estudiante
    end

    assert_redirected_to dato_estudiantes_path
  end
end
