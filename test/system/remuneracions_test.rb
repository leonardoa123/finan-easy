require "application_system_test_case"

class RemuneracionsTest < ApplicationSystemTestCase
  setup do
    @remuneracion = remuneracions(:one)
  end

  test "visiting the index" do
    visit remuneracions_url
    assert_selector "h1", text: "Remuneracions"
  end

  test "should create remuneracion" do
    visit remuneracions_url
    click_on "New remuneracion"

    fill_in "Anticipo", with: @remuneracion.anticipo
    fill_in "Id remuneracion", with: @remuneracion.id_remuneracion
    fill_in "Imposiciones", with: @remuneracion.imposiciones
    fill_in "Impuesto unic", with: @remuneracion.impuesto_unic
    fill_in "Mes remuneracion", with: @remuneracion.mes_remuneracion
    fill_in "Monto remun", with: @remuneracion.monto_remun
    fill_in "Rut empleado", with: @remuneracion.rut_empleado
    fill_in "Tipo remu", with: @remuneracion.tipo_remu
    click_on "Create Remuneracion"

    assert_text "Remuneracion was successfully created"
    click_on "Back"
  end

  test "should update Remuneracion" do
    visit remuneracion_url(@remuneracion)
    click_on "Edit this remuneracion", match: :first

    fill_in "Anticipo", with: @remuneracion.anticipo
    fill_in "Id remuneracion", with: @remuneracion.id_remuneracion
    fill_in "Imposiciones", with: @remuneracion.imposiciones
    fill_in "Impuesto unic", with: @remuneracion.impuesto_unic
    fill_in "Mes remuneracion", with: @remuneracion.mes_remuneracion
    fill_in "Monto remun", with: @remuneracion.monto_remun
    fill_in "Rut empleado", with: @remuneracion.rut_empleado
    fill_in "Tipo remu", with: @remuneracion.tipo_remu
    click_on "Update Remuneracion"

    assert_text "Remuneracion was successfully updated"
    click_on "Back"
  end

  test "should destroy Remuneracion" do
    visit remuneracion_url(@remuneracion)
    click_on "Destroy this remuneracion", match: :first

    assert_text "Remuneracion was successfully destroyed"
  end
end
