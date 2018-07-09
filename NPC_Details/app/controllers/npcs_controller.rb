class NpcsController < ApplicationController
  before_action :set_npc, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  # GET /npcs
  # GET /npcs.json
  def index
    @npcs = Npc.order(sort_column + ' ' + sort_direction).all
  end

  # GET /npcs/1
  # GET /npcs/1.json
  def show
  end

  # GET /npcs/new
  def new
    @npc = Npc.new
    if params[:race_id].present?
  @npc = Race.find(params[:npc][:race_id]).npcs.create(npc_params)
end
if request.xhr?
  respond_to do |format|
    format.json {
      render json: {npcs: @npcs}
    }
  end
end

  end

  # GET /npcs/1/edit
  def edit
  end

  # POST /npcs
  # POST /npcs.json
  def create

    randomRace if params[:npc][:race_id].size == 0
    @npc = Race.find(params[:npc][:race_id]).npcs.create(npc_params)
    respond_to do |format|
      if @npc.save
        format.html { redirect_to @npc, notice: 'Npc was successfully created.' }
        format.json { render :show, status: :created, location: @npc }
      else
        format.html { render :new }
        format.json { render json: @npc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /npcs/1
  # PATCH/PUT /npcs/1.json
  def update
    respond_to do |format|
      if @npc.update(npc_params)
        format.html { redirect_to @npc, notice: 'Npc was successfully updated.' }
        format.json { render :show, status: :ok, location: @npc }
      else
        format.html { render :edit }
        format.json { render json: @npc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /npcs/1
  # DELETE /npcs/1.json
  def destroy
    @npc.destroy
    respond_to do |format|
      format.html { redirect_to npcs_url, notice: 'Npc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_npc
      @npc = Npc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def npc_params
      params.require(:npc).permit(:name, :nickname, :surname, :age, :sex, :haircolor, :eyecolor, :skincolor, 
        :notes, :level, :height, :weight, :alignment, :rpgclass, :occupation)
    end

    def randomRace
      params[:npc][:race_id]=Race.all.pluck(:id).sample
    end

    private
    def sort_column
      Npc.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
