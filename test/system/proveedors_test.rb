require "application_system_test_case"

class ProveedorsTest < ApplicationSystemTestCase
  setup do
    @proveedor = proveedors(:one)
  end

  test "visiting the index" do
    visit proveedors_url
    assert_selector "h1", text: "Proveedors"
  end

  test "should create proveedor" do
    visit proveedors_url
    click_on "New proveedor"

    fill_in "Nombre proveedor", with: @proveedor.nombre_proveedor
    fill_in "Rut proveedor", with: @proveedor.rut_proveedor
    click_on "Create Proveedor"

    assert_text "Proveedor was successfully created"
    click_on "Back"
  end

  test "should update Proveedor" do
    visit proveedor_url(@proveedor)
    click_on "Edit this proveedor", match: :first

    fill_in "Nombre proveedor", with: @proveedor.nombre_proveedor
    fill_in "Rut proveedor", with: @proveedor.rut_proveedor
    click_on "Update Proveedor"

    assert_text "Proveedor was successfully updated"
    click_on "Back"
  end

  test "should destroy Proveedor" do
    visit proveedor_url(@proveedor)
    click_on "Destroy this proveedor", match: :first

    assert_text "Proveedor was successfully destroyed"
  end
end
