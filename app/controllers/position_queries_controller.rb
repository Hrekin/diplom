class PositionQueriesController < ApplicationController
  before_action :set_position_query, only: [:show, :edit, :update, :destroy]

  # GET /position_queries
  # GET /position_queries.json
  def index
    @position_queries = PositionQuery.all
  end

  # GET /position_queries/1
  # GET /position_queries/1.json
  def show
  end

  # GET /position_queries/new
  def new
    @position_query = PositionQuery.new
  end

  # GET /position_queries/1/edit
  def edit
  end

  # POST /position_queries
  # POST /position_queries.json
  def create
    @position_query = PositionQuery.new(position_query_params)

    respond_to do |format|
      if @position_query.save
        format.html { redirect_to @position_query, notice: 'Position query was successfully created.' }
        format.json { render :show, status: :created, location: @position_query }
      else
        format.html { render :new }
        format.json { render json: @position_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_queries/1
  # PATCH/PUT /position_queries/1.json
  def update
    respond_to do |format|
      if @position_query.update(position_query_params)
        format.html { redirect_to @position_query, notice: 'Position query was successfully updated.' }
        format.json { render :show, status: :ok, location: @position_query }
      else
        format.html { render :edit }
        format.json { render json: @position_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_queries/1
  # DELETE /position_queries/1.json
  def destroy
    @position_query.destroy
    respond_to do |format|
      format.html { redirect_to position_queries_url, notice: 'Position query was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_query
      @position_query = PositionQuery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_query_params
      params.require(:position_query).permit(:query_id, :detail_model_id, :quanity)
    end
end
