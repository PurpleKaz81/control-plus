class SessionsController < Devise::SessionsController
  private

  def after_sign_in_path_for(_resource_or_scope)
    dashboard_path
  end

  def after_sign_out_path_for(_resource_or_scope)
    root_path
  end

  def respond_to_on_destroy
    respond_to do |format|
      format.all { head :no_content }
      format.any(*navigational_formats) { redirect_to after_sign_out_path_for(resource_name), status: :see_other }
    end
  end
end
