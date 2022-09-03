class EmpleadosController < ApplicationController
  before_action :set_empleado, only: %i[ show edit update destroy ]

  # GET /empleados or /empleados.json
  def index
    @empleados = Empleado.page(params[:page])
  end

  # GET /empleados/1 or /empleados/1.json
  def show
  end

  # GET /empleados/new
  def new
    @empleado = Empleado.new
  end

  # GET /empleados/1/edit
  def edit
  end

  # POST /empleados or /empleados.json
  def create
    @empleado = Empleado.new(empleado_params)

    respond_to do |format|
      if @empleado.save
        format.html { redirect_to empleado_url(@empleado), notice: "Empleado was successfully created." }
        format.json { render :show, status: :created, location: @empleado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empleados/1 or /empleados/1.json
  def update
    respond_to do |format|
      if @empleado.update(empleado_params)
        format.html { redirect_to empleado_url(@empleado), notice: "Empleado was successfully updated." }
        format.json { render :show, status: :ok, location: @empleado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empleados/1 or /empleados/1.json
  def destroy
    @empleado.destroy

    respond_to do |format|
      format.html { redirect_to empleados_url, notice: "Empleado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empleado
      @empleado = Empleado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def empleado_params
      params.require(:empleado).permit(:rut_empleado, :nombre_empleado, :apellido_empleado, :tipo_empleado)
    end
end
