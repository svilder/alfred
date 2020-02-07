class ToDoListsController < ApplicationController
  before_action :set_to_do_list, only: [:show, :edit, :update, :destroy]
  before_action :skip_pundit?

  def index
    @to_do_lists = policy_scope(ToDoList).order(created_at: :desc)
    @task = Task.new
  end

  def show
  end

  def new
    @to_do_list = current_user.to_do_lists.new
    authorize @to_do_list
  end

  def create
    @to_do_list = current_user.to_do_lists.new(to_do_list_params)
    authorize @to_do_list

    if @to_do_list.save
      redirect_to to_do_lists_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @to_do_list.update(to_do_list_params)

    if @to_do_list.save
      redirect_to to_do_lists_path
    else
      render :new
    end
  end

  def destroy
    @to_do_list.destroy
    redirect_to to_do_lists_path
  end

  private

  def set_to_do_list
    @to_do_list = ToDoList.find(params[:id])
    authorize @to_do_list
  end

  def to_do_list_params
    params.require(:to_do_list).permit(:title, :user_id)
  end
end
