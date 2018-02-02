class ExemplarDetailsController < ApplicationController
  before_action :set_exemplar_detail, only: [:show, :edit, :update, :destroy]

  # GET /exemplar_details
  # GET /exemplar_details.json
  def index
    @exemplar_details = ExemplarDetail.all
  end

  # GET /exemplar_details/1
  # GET /exemplar_details/1.json
  def show
  end

  # GET /exemplar_details/new
  def new
    @exemplar_detail = ExemplarDetail.new
  end

  # GET /exemplar_details/1/edit
  def edit
  end

  # POST /exemplar_details
  # POST /exemplar_details.json
  def create
    @exemplar_detail = ExemplarDetail.new(exemplar_detail_params)

    respond_to do |format|
      if @exemplar_detail.save
        format.html { redirect_to @exemplar_detail, notice: 'Exemplar detail was successfully created.' }
        format.json { render :show, status: :created, location: @exemplar_detail }
      else
        format.html { render :new }
        format.json { render json: @exemplar_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exemplar_details/1
  # PATCH/PUT /exemplar_details/1.json
  def update
    respond_to do |format|
      if @exemplar_detail.update(exemplar_detail_params)
        format.html { redirect_to @exemplar_detail, notice: 'Exemplar detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @exemplar_detail }
      else
        format.html { render :edit }
        format.json { render json: @exemplar_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exemplar_details/1
  # DELETE /exemplar_details/1.json
  def destroy
    @exemplar_detail.destroy
    respond_to do |format|
      format.html { redirect_to exemplar_details_url, notice: 'Exemplar detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exemplar_detail
      @exemplar_detail = ExemplarDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exemplar_detail_params
      params.require(:exemplar_detail).permit(:exemplar_detail_name, :exemplar_detail_description, :inventory_number, :detail_model_id, :set_detail_id)
    end
end
