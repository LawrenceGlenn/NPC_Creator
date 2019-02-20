
require 'weightedSelection.rb'
require 'familyRelationship.rb'

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


        (1..city_params[:population].to_i).each do
          createNPC
        end
          familyRelationship.assignFamilyRelationships
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
      params.require(:city).permit(:name, :population, 
        :dwarfChance, 
        :elfChance, 
        :gnomeChance, 
        :goblinChance, 
        :halfElfChance, 
        :halfOrcChance, 
        :halflingChance, 
        :humanChance)
    end



    def randomRace
    weightedRace = {Dwarf: city_params[:dwarfChance].to_i, 
      Elf: city_params[:elfChance].to_i, 
      Gnome: city_params[:gnomeChance].to_i, 
      Goblin: city_params[:goblinChance].to_i, 
      'Half-Elf': city_params[:halfElfChance].to_i, 
      'Half-Orc': city_params[:halfOrcChance].to_i, 
      Halfling: city_params[:halflingChance].to_i, 
      Human: city_params[:humanChance].to_i}
      Race.find_by_name(WeightedSelection.choose(weightedRace)).id
    end

    def createNPC
      npc = Race.find(randomRace).npcs.create()
      npc.city_id = @city.id
      npc.save
    end

    
end
