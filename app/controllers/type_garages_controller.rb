class TypeGaragesController < ApplicationController
  before_action :set_type_garage, only: [:show, :edit, :update, :destroy]

  # GET /type_garages
  # GET /type_garages.json
  def index
    @type_garages = TypeGarage.all
  end

  # GET /type_garages/1
  # GET /type_garages/1.json
  def show
  end

  # GET /type_garages/new
  def new
    @type_garage = TypeGarage.new
  end

  # GET /type_garages/1/edit
  def edit
  end

  # POST /type_garages
  # POST /type_garages.json
  def create
    @type_garage = TypeGarage.new(type_garage_params)

    respond_to do |format|
      if @type_garage.save
        format.html { redirect_to @type_garage, notice: 'Type garage was successfully created.' }
        format.json { render :show, status: :created, location: @type_garage }
      else
        format.html { render :new }
        format.json { render json: @type_garage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_garages/1
  # PATCH/PUT /type_garages/1.json
  def update
    respond_to do |format|
      if @type_garage.update(type_garage_params)
        format.html { redirect_to @type_garage, notice: 'Type garage was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_garage }
      else
        format.html { render :edit }
        format.json { render json: @type_garage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_garages/1
  # DELETE /type_garages/1.json
  def destroy
    @type_garage.destroy
    respond_to do |format|
      format.html { redirect_to type_garages_url, notice: 'Type garage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_garage
      @type_garage = TypeGarage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_garage_params
      params.require(:type_garage).permit(:Des_typegarage, :no_ceiling, :yes_ceiling)
    end
end
