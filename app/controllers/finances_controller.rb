class FinancesController < ApplicationController
  def index
    @finances = Finance.all
  end

  def new
    @finance = Finance.new
  end

  def create
    @finance = Finance.new(strong_params)
    @finance.user = current_user
    if @finance.save
      redirect_to finances_path, notice: 'Nova entrada/saída criada com sucesso.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @finance = Finance.find(params[:id])
  end

  def update
    @finance = Finance.find(params[:id])
    @finance.update(strong_params)
    redirect_to finances_path, notice: 'Entrada/Saída editada com sucess.'
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
