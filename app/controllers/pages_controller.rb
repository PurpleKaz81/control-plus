class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  # def dashboard; end

  # def home
  #   if params[:query].present?
  #     sql_query = "name ILIKE :query OR description ILIKE :query"
  #     @products = Product.where(sql_query, query: "%#{params[:query]}%")
  #   else
  #     @products = Product.all
  #   end
  # end
end
