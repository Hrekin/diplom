class SetDetailsController < ApplicationController
  before_action :set_set_detail, only: [:show, :edit, :update, :destroy]

  # GET /set_details
  # GET /set_details.json
  def index
    @set_details = SetDetail.all
  end

  # GET /set_details/1
  # GET /set_details/1.json
  def show
  end

  # GET /set_details/new
  def new
    @set_detail = SetDetail.new
  end

  # GET /set_details/1/edit
  def edit
  end

  # POST /set_details
  # POST /set_details.json
  def create
    @set_detail = SetDetail.new(set_detail_params)

    respond_to do |format|
      if @set_detail.save
        format.html { redirect_to @set_detail, notice: 'Set detail was successfully created.' }
        format.json { render :show, status: :created, location: @set_detail }
      else
        format.html { render :new }
        format.json { render json: @set_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_details/1
  # PATCH/PUT /set_details/1.json
  def update
    respond_to do |format|
      if @set_detail.update(set_detail_params)
        format.html { redirect_to @set_detail, notice: 'Set detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @set_detail }
      else
        format.html { render :edit }
        format.json { render json: @set_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_details/1
  # DELETE /set_details/1.json
  def destroy
    @set_detail.destroy
    respond_to do |format|
      format.html { redirect_to set_details_url, notice: 'Set detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_detail
      @set_detail = SetDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_detail_params
      params.require(:set_detail).permit(:set_name)
    end
end
