class AdminController < ApplicationController
  def new
    render :layout => false
  end

  def create
    admin = Admin.find_by(username: params[:username])
    if admin.present? && admin.authenticate(params[:password])
        session[:admin_id] = admin.id
        render plain: "SUCCESS"
      else
        render plain: "FAILED"
   end
  end
end
