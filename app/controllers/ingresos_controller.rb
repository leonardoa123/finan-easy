class IngresosController < ApplicationController
  before_action :set_ingreso, only: %i[ show edit update destroy ]

  # GET /ingresos or /ingresos.json
  def index
    @ingresos = Ingreso.page(params[:page])
  end

  # GET /ingresos/1 or /ingresos/1.json
  def show
  end

  # GET /ingresos/new
  def new
    @ingreso = Ingreso.new
  end

  # GET /ingresos/1/edit
  def edit
  end

  # POST /ingresos or /ingresos.json
  def create
    @ingreso = Ingreso.new(ingreso_params)

    respond_to do |format|
      if @ingreso.save
        format.html { redirect_to ingreso_url(@ingreso), notice: "Ingreso was successfully created." }
        format.json { render :show, status: :created, location: @ingreso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingresos/1 or /ingresos/1.json
  def update
    respond_to do |format|
      if @ingreso.update(ingreso_params)
        format.html { redirect_to ingreso_url(@ingreso), notice: "Ingreso was successfully updated." }
        format.json { render :show, status: :ok, location: @ingreso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingresos/1 or /ingresos/1.json
  def destroy
    @ingreso.destroy

    respond_to do |format|
      format.html { redirect_to ingresos_url, notice: "Ingreso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingreso
      @ingreso = Ingreso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingreso_params
      params.require(:ingreso).permit(:documento, :nro_doc, :fecha_emision, :fecha_pago, :rut_cliente, :monto_ingreso, :tipo_ingreso)
    end
end
