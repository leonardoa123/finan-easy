class RemuneracionsController < ApplicationController
  before_action :set_remuneracion, only: %i[ show edit update destroy ]

  # GET /remuneracions or /remuneracions.json
  def index
    @remuneracions = Remuneracion.page(params[:page])
  end

  # GET /remuneracions/1 or /remuneracions/1.json
  def show
  end

  # GET /remuneracions/new
  def new
    @remuneracion = Remuneracion.new
  end

  # GET /remuneracions/1/edit
  def edit
  end

  # POST /remuneracions or /remuneracions.json
  def create
    @remuneracion = Remuneracion.new(remuneracion_params)

    respond_to do |format|
      if @remuneracion.save
        format.html { redirect_to remuneracion_url(@remuneracion), notice: "Remuneracion was successfully created." }
        format.json { render :show, status: :created, location: @remuneracion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @remuneracion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remuneracions/1 or /remuneracions/1.json
  def update
    respond_to do |format|
      if @remuneracion.update(remuneracion_params)
        format.html { redirect_to remuneracion_url(@remuneracion), notice: "Remuneracion was successfully updated." }
        format.json { render :show, status: :ok, location: @remuneracion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @remuneracion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remuneracions/1 or /remuneracions/1.json
  def destroy
    @remuneracion.destroy

    respond_to do |format|
      format.html { redirect_to remuneracions_url, notice: "Remuneracion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remuneracion
      @remuneracion = Remuneracion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def remuneracion_params
      params.require(:remuneracion).permit(:rut_empleado, :monto_remun, :imposiciones, :anticipo, :impuesto_unic, :tipo_remu, :id_remuneracion, :mes_remuneracion)
    end
end
