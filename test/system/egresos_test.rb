require "application_system_test_case"

class EgresosTest < ApplicationSystemTestCase
  setup do
    @egreso = egresos(:one)
  end

  test "visiting the index" do
    visit egresos_url
    assert_selector "h1", text: "Egresos"
  end

  test "should create egreso" do
    visit egresos_url
    click_on "New egreso"

    fill_in "Documento", with: @egreso.documento
    fill_in "Fecha emision", with: @egreso.fecha_emision
    fill_in "Fecha pago", with: @egreso.fecha_pago
    fill_in "Monto egreso", with: @egreso.monto_egreso
    fill_in "Nro doc", with: @egreso.nro_doc
    fill_in "Rut proveedor", with: @egreso.rut_proveedor
    fill_in "Tipo egreso", with: @egreso.tipo_egreso
    click_on "Create Egreso"

    assert_text "Egreso was successfully created"
    click_on "Back"
  end

  test "should update Egreso" do
    visit egreso_url(@egreso)
    click_on "Edit this egreso", match: :first

    fill_in "Documento", with: @egreso.documento
    fill_in "Fecha emision", with: @egreso.fecha_emision
    fill_in "Fecha pago", with: @egreso.fecha_pago
    fill_in "Monto egreso", with: @egreso.monto_egreso
    fill_in "Nro doc", with: @egreso.nro_doc
    fill_in "Rut proveedor", with: @egreso.rut_proveedor
    fill_in "Tipo egreso", with: @egreso.tipo_egreso
    click_on "Update Egreso"

    assert_text "Egreso was successfully updated"
    click_on "Back"
  end

  test "should destroy Egreso" do
    visit egreso_url(@egreso)
    click_on "Destroy this egreso", match: :first

    assert_text "Egreso was successfully destroyed"
  end
end
