class MaterialValuesController < ApplicationController
  before_action :set_material_value, only: [:show, :edit, :update, :destroy]

  # GET /material_values
  # GET /material_values.json
  def index
    @material_values = MaterialValue.all
  end

  # GET /material_values/1
  # GET /material_values/1.json
  def show
  end

  # GET /material_values/new
  def new
    @material_value = MaterialValue.new
  end

  # GET /material_values/1/edit
  def edit
  end

  # POST /material_values
  # POST /material_values.json
  def create
    @material_value = MaterialValue.new(material_value_params)

    respond_to do |format|
      if @material_value.save
        format.html { redirect_to @material_value, notice: 'Material value was successfully created.' }
        format.json { render :show, status: :created, location: @material_value }
      else
        format.html { render :new }
        format.json { render json: @material_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_values/1
  # PATCH/PUT /material_values/1.json
  def update
    respond_to do |format|
      if @material_value.update(material_value_params)
        format.html { redirect_to @material_value, notice: 'Material value was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_value }
      else
        format.html { render :edit }
        format.json { render json: @material_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_values/1
  # DELETE /material_values/1.json
  def destroy
    @material_value.destroy
    respond_to do |format|
      format.html { redirect_to material_values_url, notice: 'Material value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_value
      @material_value = MaterialValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_value_params
      params.require(:material_value).permit(:status, :exemplar_detail_id, :position_query_id)
    end
end
