class RegistrationsController < Devise::RegistrationsController

	protected

		def after_sign_up_path_for(resource)
			'/pricing'
			redirect_to library_index_path, notice: "Welcome."
		end

end