require "test_helper"

class RemuneracionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @remuneracion = remuneracions(:one)
  end

  test "should get index" do
    get remuneracions_url
    assert_response :success
  end

  test "should get new" do
    get new_remuneracion_url
    assert_response :success
  end

  test "should create remuneracion" do
    assert_difference("Remuneracion.count") do
      post remuneracions_url, params: { remuneracion: { anticipo: @remuneracion.anticipo, id_remuneracion: @remuneracion.id_remuneracion, imposiciones: @remuneracion.imposiciones, impuesto_unic: @remuneracion.impuesto_unic, mes_remuneracion: @remuneracion.mes_remuneracion, monto_remun: @remuneracion.monto_remun, rut_empleado: @remuneracion.rut_empleado, tipo_remu: @remuneracion.tipo_remu } }
    end

    assert_redirected_to remuneracion_url(Remuneracion.last)
  end

  test "should show remuneracion" do
    get remuneracion_url(@remuneracion)
    assert_response :success
  end

  test "should get edit" do
    get edit_remuneracion_url(@remuneracion)
    assert_response :success
  end

  test "should update remuneracion" do
    patch remuneracion_url(@remuneracion), params: { remuneracion: { anticipo: @remuneracion.anticipo, id_remuneracion: @remuneracion.id_remuneracion, imposiciones: @remuneracion.imposiciones, impuesto_unic: @remuneracion.impuesto_unic, mes_remuneracion: @remuneracion.mes_remuneracion, monto_remun: @remuneracion.monto_remun, rut_empleado: @remuneracion.rut_empleado, tipo_remu: @remuneracion.tipo_remu } }
    assert_redirected_to remuneracion_url(@remuneracion)
  end

  test "should destroy remuneracion" do
    assert_difference("Remuneracion.count", -1) do
      delete remuneracion_url(@remuneracion)
    end

    assert_redirected_to remuneracions_url
  end
end
