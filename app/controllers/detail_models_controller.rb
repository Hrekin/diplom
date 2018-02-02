class DetailModelsController < ApplicationController
  before_action :set_detail_model, only: [:show, :edit, :update, :destroy]

  # GET /detail_models
  # GET /detail_models.json
  def index
    @detail_models = DetailModel.all
  end

  # GET /detail_models/1
  # GET /detail_models/1.json
  def show
  end

  # GET /detail_models/new
  def new
    @detail_model = DetailModel.new
  end

  # GET /detail_models/1/edit
  def edit
  end

  # POST /detail_models
  # POST /detail_models.json
  def create
    @detail_model = DetailModel.new(detail_model_params)

    respond_to do |format|
      if @detail_model.save
        format.html { redirect_to @detail_model, notice: 'Detail model was successfully created.' }
        format.json { render :show, status: :created, location: @detail_model }
      else
        format.html { render :new }
        format.json { render json: @detail_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_models/1
  # PATCH/PUT /detail_models/1.json
  def update
    respond_to do |format|
      if @detail_model.update(detail_model_params)
        format.html { redirect_to @detail_model, notice: 'Detail model was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail_model }
      else
        format.html { render :edit }
        format.json { render json: @detail_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_models/1
  # DELETE /detail_models/1.json
  def destroy
    @detail_model.destroy
    respond_to do |format|
      format.html { redirect_to detail_models_url, notice: 'Detail model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_model
      @detail_model = DetailModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_model_params
      params.require(:detail_model).permit(:name, :serial_number, :description, :produce_date, :manufacter, :properties, :category_id)
    end
end
