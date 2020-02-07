class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :destroy]
  before_action :skip_pundit?

  def new
    @to_do_list = ToDoList.find(params[:to_do_list_id])
    @task = Task.new
    authorize @task
  end

  def create
    @task = Task.new(task_params)
    @task.to_do_list_id = params[:to_do_list_id]
    authorize @task

    if @task.save
      redirect_to to_do_lists_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @task.update(task_params)

    if @task.save
      redirect_to to_do_lists_path
    else
      render :edit
    end
  end

  def mark_as_done
    if @task.status
      @task.status = false
    else
      @task.status = true
    end
  end

  def destroy
    @task.destroy
    redirect_to to_do_lists_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
    authorize @task
  end

  def task_params
    params.require(:task).permit(:description, :status, :to_do_list_id)
  end
end
