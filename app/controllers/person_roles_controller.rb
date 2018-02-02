class PersonRolesController < ApplicationController
  before_action :set_person_role, only: [:show, :edit, :update, :destroy]

  # GET /person_roles
  # GET /person_roles.json
  def index
    @person_roles = PersonRole.all
  end

  # GET /person_roles/1
  # GET /person_roles/1.json
  def show
  end

  # GET /person_roles/new
  def new
    @person_role = PersonRole.new
  end

  # GET /person_roles/1/edit
  def edit
  end

  # POST /person_roles
  # POST /person_roles.json
  def create
    @person_role = PersonRole.new(person_role_params)

    respond_to do |format|
      if @person_role.save
        format.html { redirect_to @person_role, notice: 'Person role was successfully created.' }
        format.json { render :show, status: :created, location: @person_role }
      else
        format.html { render :new }
        format.json { render json: @person_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_roles/1
  # PATCH/PUT /person_roles/1.json
  def update
    respond_to do |format|
      if @person_role.update(person_role_params)
        format.html { redirect_to @person_role, notice: 'Person role was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_role }
      else
        format.html { render :edit }
        format.json { render json: @person_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_roles/1
  # DELETE /person_roles/1.json
  def destroy
    @person_role.destroy
    respond_to do |format|
      format.html { redirect_to person_roles_url, notice: 'Person role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_role
      @person_role = PersonRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_role_params
      params.require(:person_role).permit(:person_id, :role_id)
    end
end
