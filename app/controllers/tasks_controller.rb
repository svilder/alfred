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
      render 'to_do_lists'
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to to_do_lists_path
    else
      render 'to_do_lists'
    end
  end

  def done
    @task = Task.find(params[:task_id])
    authorize @task
    if @task.update_attribute(:status, status)
      redirect_to to_do_lists_path, notice: if @task.status then "Rock star !" else "Tomorrow is another day !" end
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to to_do_lists_path
  end

  private

  def status
    @task.status ? @task.status = false : @task.status = true
  end

  def set_task
    @task = Task.find(params[:id])
    authorize @task
  end

  def task_params
    params.require(:task).permit(:description, :status, :to_do_list_id)
  end
end
