class RequestPeopleController < ApplicationController
  before_action :set_request_person, only: [:show, :edit, :update, :destroy]

  # GET /request_people
  # GET /request_people.json
  def index
    @request_people = RequestPerson.all
  end

  # GET /request_people/1
  # GET /request_people/1.json
  def show
  end

  # GET /request_people/new
  def new
    @request_person = RequestPerson.new
  end

  # GET /request_people/1/edit
  def edit
  end

  # POST /request_people
  # POST /request_people.json
  def create
    @request_person = RequestPerson.new(request_person_params)

    respond_to do |format|
      if @request_person.save
        format.html { redirect_to @request_person, notice: 'Request person was successfully created.' }
        format.json { render :show, status: :created, location: @request_person }
      else
        format.html { render :new }
        format.json { render json: @request_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_people/1
  # PATCH/PUT /request_people/1.json
  def update
    respond_to do |format|
      if @request_person.update(request_person_params)
        format.html { redirect_to @request_person, notice: 'Request person was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_person }
      else
        format.html { render :edit }
        format.json { render json: @request_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_people/1
  # DELETE /request_people/1.json
  def destroy
    @request_person.destroy
    respond_to do |format|
      format.html { redirect_to request_people_url, notice: 'Request person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_person
      @request_person = RequestPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_person_params
      params.require(:request_person).permit(:request_id, :person_id, :person_type)
    end
end
