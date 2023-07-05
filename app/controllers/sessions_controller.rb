class SessionsController < ApplicationController
	def new

  end
	
	def create
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    if resource.admin?
      redirect_to admin_dashboard_path
    else
      redirect_to user_dashboard_path
    end
  end
end
