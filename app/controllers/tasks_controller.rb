class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if !(@task.save)
      render 'new'
    else
      redirect_to task_path(@task)
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if !(@task.update(task_params))
      render 'edit'
    else
      redirect_to task_path(@task)
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if !(@task.destroy)
      render 'index'
    else
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
