require "test_helper"

class EgresosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @egreso = egresos(:one)
  end

  test "should get index" do
    get egresos_url
    assert_response :success
  end

  test "should get new" do
    get new_egreso_url
    assert_response :success
  end

  test "should create egreso" do
    assert_difference("Egreso.count") do
      post egresos_url, params: { egreso: { documento: @egreso.documento, fecha_emision: @egreso.fecha_emision, fecha_pago: @egreso.fecha_pago, monto_egreso: @egreso.monto_egreso, nro_doc: @egreso.nro_doc, rut_proveedor: @egreso.rut_proveedor, tipo_egreso: @egreso.tipo_egreso } }
    end

    assert_redirected_to egreso_url(Egreso.last)
  end

  test "should show egreso" do
    get egreso_url(@egreso)
    assert_response :success
  end

  test "should get edit" do
    get edit_egreso_url(@egreso)
    assert_response :success
  end

  test "should update egreso" do
    patch egreso_url(@egreso), params: { egreso: { documento: @egreso.documento, fecha_emision: @egreso.fecha_emision, fecha_pago: @egreso.fecha_pago, monto_egreso: @egreso.monto_egreso, nro_doc: @egreso.nro_doc, rut_proveedor: @egreso.rut_proveedor, tipo_egreso: @egreso.tipo_egreso } }
    assert_redirected_to egreso_url(@egreso)
  end

  test "should destroy egreso" do
    assert_difference("Egreso.count", -1) do
      delete egreso_url(@egreso)
    end

    assert_redirected_to egresos_url
  end
end
