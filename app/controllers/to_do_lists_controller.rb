class ToDoListsController < ApplicationController
  before_action :set_to_do_list, only: [:edit, :update, :destroy]

  def index
    @to_do_lists = policy_scope(ToDoList).order(created_at: :desc)
  end

  def new
    @to_do_list = ToDoList.new
    @to_do_list.user = current_user
    authorize @to_do_list
  end

  def create
    @to_do_list = ToDoList.new(to_do_list_params)
    @to_do_list.user = current_user
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
      render :edit
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
    params.require(:to_do_list).permit(:title)
  end
end
