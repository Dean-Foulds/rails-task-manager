class TasksController < ApplicationController
  # before_action :set_restaurant, only: [:show, :edit, :destroy]
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
   Task.create(task_params)
   # redirect_to tasks_path
  end

  def edit
    @task = Task.find(param[:id])
  end

  def update
    @task = Task.find(param[:id])
    Task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(param[:id])
    @task.destroy
    redirect_to tasks_path

  end

  private

  def restaurant_params
    params.require(:task).permit(:name, :location, :priority)
  end

  def set_restaurant
    @task = Task.find(params[:id])
  end
end
