module ApplicationHelper

	def current_user_subscribed?
		user_signed_in? && current_user.subscribed?
	end

	def admin?
		user_signed_in? && current_user.admin?		
	end

	def subscribed?
		user_signed_in? && current_user.subscribed?
	end

	def titleize(str)
		str.gsub('_',' ').capitalize
	end

end