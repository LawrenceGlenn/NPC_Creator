
require 'weightedSelection.rb'

class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit
  end

  # POST /cities
  # POST /cities.json
  def create

    @city = City.new(city_params)
    respond_to do |format|
      if @city.save


        (1..params[:city][:population].to_i).each do
          @npc = Race.find(randomRace).npcs.create()
          @npc.city_id = @city.id
          @npc.save
          #Npc.last.update(city_id: City.last.id)
        end
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:name, :population, :dwarfChance)
    end



    def randomRace
    weightedRace = {Dwarf: params[:city][:dwarfChance].to_i, 
      Elf: params[:city][:elfChance].to_i, 
      Gnome: params[:city][:gnomeChance].to_i, 
      Goblin: params[:city][:goblinChance].to_i, 
      'Half-Elf': params[:city][:halfElfChance].to_i, 
      'Half-Orc': params[:city][:halfOrcChance].to_i, 
      Halfling: params[:city][:halflingChance].to_i, 
      Human: params[:city][:humanChance].to_i}
      Race.find_by_name(WeightedSelection.choose(weightedRace)).id
    end


end
