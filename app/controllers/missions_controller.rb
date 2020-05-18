class MissionsController < ApplicationController
  before_action :set_mission, only: [:edit, :update, :destroy]

  def index
    @missions = policy_scope(Mission).order(created_at: :desc)
  end

  def new
    @mission = Mission.new
    @mission.user = current_user
    authorize @mission
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user = current_user
    authorize @mission

    if @mission.save
      redirect_to missions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @mission.update(mission_params)

    if @mission.save
      redirect_to missions_path
    else
      render :edit
    end
  end

  def destroy
    @mission.destroy
    redirect_to missions_path
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
    authorize @mission
  end

  def mission_params
    params.require(:mission).permit(:title, :description, :client_name, :time_spent, :money_earned, :note)
  end
end
