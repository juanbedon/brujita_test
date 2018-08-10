class HomeController < ApplicationController

	layout "home"
	

  def index

  	if user_signed_in? && current_user.subscribed?
  		redirect_to courses_path
  	end
  	
  end

end