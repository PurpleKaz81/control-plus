class TasksController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :move

  def index
    @tasks = if params[:search].present?
               Task.where("content ILIKE ?", "%#{params[:search]}%")
             else
               Task.all
             end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(strong_params)
    @task.user = current_user
    if @task.save
      redirect_to tasks_path, notice: 'Tarefa criada com sucesso.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(strong_params)
    redirect_to tasks_path, notice: 'Tarefa editada com sucesso.'
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other, notice: 'Sua Tarefa Foi Deletada Com Sucesso.'
  end

  def move
    @task = Task.find(params[:id])
    @task.update!(position: params[:position].to_i)
    render json: {
      update: "ok"
    }
  end

  private

  def strong_params
    params.require(:task).permit(:content, :date, :order)
  end
end
