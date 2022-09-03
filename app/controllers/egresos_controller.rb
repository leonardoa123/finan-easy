class EgresosController < ApplicationController
  before_action :set_egreso, only: %i[ show edit update destroy ]

  # GET /egresos or /egresos.json
  def index
    @egresos = Egreso.page(params[:page])
    #@posts = Post.all.page()
  end

  # GET /egresos/1 or /egresos/1.json
  def show
  end

  # GET /egresos/new
  def new
    @egreso = Egreso.new
  end

  # GET /egresos/1/edit
  def edit
  end

  # POST /egresos or /egresos.json
  def create
    @egreso = Egreso.new(egreso_params)

    respond_to do |format|
      if @egreso.save
        format.html { redirect_to egreso_url(@egreso), notice: "Egreso was successfully created." }
        format.json { render :show, status: :created, location: @egreso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @egreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /egresos/1 or /egresos/1.json
  def update
    respond_to do |format|
      if @egreso.update(egreso_params)
        format.html { redirect_to egreso_url(@egreso), notice: "Egreso was successfully updated." }
        format.json { render :show, status: :ok, location: @egreso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @egreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /egresos/1 or /egresos/1.json
  def destroy
    @egreso.destroy

    respond_to do |format|
      format.html { redirect_to egresos_url, notice: "Egreso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egreso
      @egreso = Egreso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def egreso_params
      params.require(:egreso).permit(:documento, :nro_doc, :fecha_emision, :fecha_pago, :rut_proveedor, :monto_egreso, :tipo_egreso)
    end
end
