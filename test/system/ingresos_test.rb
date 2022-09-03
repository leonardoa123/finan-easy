require "application_system_test_case"

class IngresosTest < ApplicationSystemTestCase
  setup do
    @ingreso = ingresos(:one)
  end

  test "visiting the index" do
    visit ingresos_url
    assert_selector "h1", text: "Ingresos"
  end

  test "should create ingreso" do
    visit ingresos_url
    click_on "New ingreso"

    fill_in "Documento", with: @ingreso.documento
    fill_in "Fecha emision", with: @ingreso.fecha_emision
    fill_in "Fecha pago", with: @ingreso.fecha_pago
    fill_in "Monto ingreso", with: @ingreso.monto_ingreso
    fill_in "Nro doc", with: @ingreso.nro_doc
    fill_in "Rut cliente", with: @ingreso.rut_cliente
    fill_in "Tipo ingreso", with: @ingreso.tipo_ingreso
    click_on "Create Ingreso"

    assert_text "Ingreso was successfully created"
    click_on "Back"
  end

  test "should update Ingreso" do
    visit ingreso_url(@ingreso)
    click_on "Edit this ingreso", match: :first

    fill_in "Documento", with: @ingreso.documento
    fill_in "Fecha emision", with: @ingreso.fecha_emision
    fill_in "Fecha pago", with: @ingreso.fecha_pago
    fill_in "Monto ingreso", with: @ingreso.monto_ingreso
    fill_in "Nro doc", with: @ingreso.nro_doc
    fill_in "Rut cliente", with: @ingreso.rut_cliente
    fill_in "Tipo ingreso", with: @ingreso.tipo_ingreso
    click_on "Update Ingreso"

    assert_text "Ingreso was successfully updated"
    click_on "Back"
  end

  test "should destroy Ingreso" do
    visit ingreso_url(@ingreso)
    click_on "Destroy this ingreso", match: :first

    assert_text "Ingreso was successfully destroyed"
  end
end
