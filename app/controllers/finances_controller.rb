class FinancesController < ApplicationController
  before_action :set_finance, only: %i[edit edit_outflow update destroy]
  def index
    @finances = current_user.finances
  end

  def inflow
    @inflows = current_user.finances.where(category: 'Entrada').order(:date)
    @inflow_sum = @inflows.sum(:value)
    @inflows = @inflows.where('description ILIKE ?', "%#{params[:search]}%") if params[:search].present?
    @total_filtered = @inflows.sum(:value)
    @total = total
  end

  def outflow
    @outflows = current_user.finances.where(category: 'Saída').order(:date)
    @outflow_sum = @outflows.sum(:value)
    @outflows = @outflows.where('description ILIKE ?', "%#{params[:search]}%") if params[:search].present?
    @total_filtered = @outflows.sum(:value)
    @total = total
  end

  def new
    @finance = Finance.new
  end

  def new_outflow
    @finance = Finance.new
  end

  def create
    @finance = Finance.new(strong_params)
    @finance.user = current_user
    if @finance.save
      if @finance.category == 'Entrada'
        redirect_to inflow_finances_path, notice: 'Nova entrada criada com sucesso.'
      else
        redirect_to outflow_finances_path, notice: 'Nova saída criada com sucesso.'
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def edit_outflow; end

  def update
    if @finance.update(strong_params)
      if @finance.category == 'Entrada'
        redirect_to inflow_finances_path, notice: 'Entrada editada com sucesso.'
      else
        redirect_to outflow_finances_path, notice: 'Saída editada com sucesso.'
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @finance.destroy
    if @finance.inflow?
      redirect_to inflow_finances_path, notice: 'Sua Entrada Foi Deletada Com Sucesso.'
    else
      redirect_to outflow_finances_path, notice: 'Sua Saída Foi Deletada Com Sucesso.'
    end
    # redirect_to finances_path, notice: 'Sua Entrada/Saída Foi Deletada Com Sucesso.'
  end

  private

  def set_finance
    @finance = Finance.find(params[:id])
  end

  def strong_params
    params.require(:finance).permit(:category, :description, :value, :date)
  end

  def total
    inflow_sum = current_user.finances.where(category: 'Entrada').sum(:value)
    outflow_sum = current_user.finances.where(category: 'Saída').sum(:value)
    inflow_sum - outflow_sum
  end
end
