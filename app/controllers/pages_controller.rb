class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home faq quemsomos recursos]

  def home; end
end
