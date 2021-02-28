class TasksController < ApplicationController
<<<<<<< HEAD
  before_action :set_task, only: [:show, :edit, :delete, :update]

=======
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks or /tasks.json
>>>>>>> c98d32fb086b4d5744edc1de3bb74cda0403a523
  def index
    @tasks = Task.all
  end

<<<<<<< HEAD
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
=======
  # GET /tasks/1 or /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks or /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :description, :image_url)
    end
>>>>>>> c98d32fb086b4d5744edc1de3bb74cda0403a523
end
