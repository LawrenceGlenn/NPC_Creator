class RacesController < ApplicationController

  def get_races_by_selection
    @races = Race.where("id = ?", params[:race_selection])
    respond_to do |format|
      format.json { render :json => @races }
    end
  end 
  
end
