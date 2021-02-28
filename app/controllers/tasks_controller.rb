class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :delete, :update]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
  end

  def edit
  end

  def delete
    @task.destroy
  end

  def update
  end

end

private

def set_task
  @task =Task.find(params[:id])
end
