class ObjectivesController < ApplicationController
  before_action :set_objectif, only: [:edit, :update, :destroy]

  def index
    @objectives = policy_scope(Objectif).order(created_at: :desc)
  end

  def new
    @objectif = Objectif.new
    @objectif.user = current_user
    authorize @objectif
  end

  def create
    @objectif = Objectif.new(objectif_params)
    @objectif.user = current_user
    authorize @objectif

    if @objectif.save
      redirect_to objectives_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @objectif.update(objectif_params)

    if @objectif.save
      redirect_to objectives_path
    else
      render :edit
    end
  end

  def destroy
    @objectif.destroy
    redirect_to objectives_path
  end

  private

  def set_objectif
    @objectif = Objectif.find(params[:id])
    authorize @objectif
  end

  def objectif_params
    params.require(:objectif).permit(:title, :description, :date)
  end
end
