class TasksController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[move complete]

  def index
    @tasks = if params[:search].present?
               Task.where('content ILIKE ?', "%#{params[:search]}%")
             else
               current_user.tasks
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
    redirect_to tasks_path(confirm: 'delete'), status: :see_other
  end

  def move
    @task = Task.find(params[:id])
    @task.update!(position: params[:position].to_i)
    render json: {
      update: 'ok'
    }
  end

  def complete
    @task = Task.find(params[:id])
    @task.update(completed: !@task.completed)
    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'shared/row', locals: { task: @tasks }, formats: [:html] }
    end
  end

  private

  def set_task_id
    @task = Task.find(params[:id])
  end

  def strong_params
    params.require(:task).permit(:content, :date, :time)
  end
end
