class ToDoListsController < ApplicationController
  before_action :set_to_do_list, only: [:show, :edit, :update, :destroy]

  def index
    @to_do_lists = ToDoList.all
    @task = Task.new
  end

  def new
    @to_do_list = ToDoList.new
  end

  def create
    @to_do_list = ToDoList.new(to_do_list_params)
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
    if @to_do_list.update
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
    @to_do_list = To_do_list.find(params[:id])
  end

  def to_do_list_params
    params.require(:to_do_list).permit(:title)
  end

end
