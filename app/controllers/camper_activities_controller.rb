class CamperActivitiesController < ApplicationController

  def new 
    @camper_activity = CamperActivity.new

    @activities = Activity.all
    @campers = Camper.all

    # @errors = flash[:errors]
  end 

  def create 
    @camper_activity = CamperActivity.create(camper_activity_params)

    # @camper_activity = CamperActivity.new(camper_activity_params)

    # @camper_activity.save

    if @camper_activity.valid?
      redirect_to camper_path(@camper_activity.camper)
    else 
      flash[:errors] = @camper_activity.errors.full_messages

      redirect_to new_camper_activity_path
    end


    # redirect_to @camper_activity.camper
  end 


  private 

  def camper_activity_params
    params.require(:camper_activity).permit(:camper_id, :activity_id, :time)
  end 
end
