class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :destroy]
  before_action :skip_pundit?

  def new
    @to_do_list = ToDoList.find(params[:to_do_list_id])
    @task = Task.new
    authorize @task
    respond_to do |format|
      format.html { redirect_to new_to_do_list_task_path(@to_do_list) }
      format.js
    end
  end

  def create
    @task = Task.new(task_params)
    @task.to_do_list_id = params[:to_do_list_id]
    authorize @task

    if @task.save
      respond_to do |format|
        format.html { redirect_to to_do_list_path(params[:to_do_list_id]) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'to_do_lists/show' }
        format.js
      end
    end
  end

  def edit
    respond_to do |format|
      format.html { redirect_to edit_task_path(@task) }
      format.js
    end
  end

  def update
    if @task.update(task_params)
      respond_to do |format|
        format.html { to_do_list_path(@task.to_do_list_id) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'to_do_lists/show' }
        format.js
      end
    end
  end

  def done
    @task = Task.find(params[:task_id])
    authorize @task
    if @task.update_attribute(:status, status)
      redirect_to to_do_list_path(@task.to_do_list_id), notice: "Rock star !"
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to to_do_list_path(@task.to_do_list_id) }
      format.js
    end
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
