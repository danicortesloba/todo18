class TasksController < ApplicationController
before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
     @task = Task.find(params[:id])
     @people = @task.users
  end

  def complete
  @task = Task.find(params[:id])
  @task.users << current_user
  @task.save
  redirect_to tasks_path
end

  def incomplete
    user = current_user
    @task = Task.find(params[:id])
    @task.users.delete(user)
    @task.save
    redirect_to tasks_path
  end

  def set_task
    @task = Task.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def task_params
    params.require(:task).permit(:name, :photo)
  end
end
