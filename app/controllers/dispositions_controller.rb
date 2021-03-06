class DispositionsController < ApplicationController
  before_action :set_disposition, only: [:show, :edit, :update, :destroy]

  # GET /dispositions
  # GET /dispositions.json
  def index
    @dispositions = Disposition.all
  end

  # GET /dispositions/1
  # GET /dispositions/1.json
  def show
  end

  # GET /dispositions/new
  def new
    @disposition = Disposition.new
  end

  # GET /dispositions/1/edit
  def edit
  end

  # POST /dispositions
  # POST /dispositions.json
  def create
    @disposition = Disposition.new(disposition_params)

    respond_to do |format|
      if @disposition.save
        format.html { redirect_to @disposition, notice: 'Disposition was successfully created.' }
        format.json { render :show, status: :created, location: @disposition }
      else
        format.html { render :new }
        format.json { render json: @disposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dispositions/1
  # PATCH/PUT /dispositions/1.json
  def update
    respond_to do |format|
      if @disposition.update(disposition_params)
        format.html { redirect_to @disposition, notice: 'Disposition was successfully updated.' }
        format.json { render :show, status: :ok, location: @disposition }
      else
        format.html { render :edit }
        format.json { render json: @disposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispositions/1
  # DELETE /dispositions/1.json
  def destroy
    @disposition.destroy
    respond_to do |format|
      format.html { redirect_to dispositions_url, notice: 'Disposition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disposition
      @disposition = Disposition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disposition_params
      params.require(:disposition).permit(:name)
    end
end
