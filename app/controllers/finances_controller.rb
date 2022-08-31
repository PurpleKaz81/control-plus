class FinancesController < ApplicationController
  def index
    @finances = Finance.all
  end

  def inflow
    @inflows = Finance.where(category: 'Entrada')
  end

  def outflow
    @outflows = Finance.where(category: 'Saída')
  end

  def new
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

  def edit
    @finance = Finance.find(params[:id])
  end

  def update
    @finance = Finance.find(params[:id])
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
    @finance = Finance.find(params[:id])
    @finance.destroy
    redirect_to finances_path, notice: 'Sua Entrada/Saída Foi Deletada Com Sucesso.'
  end

  private

  def strong_params
    params.require(:finance).permit(:category, :description, :value, :date)
  end
end
