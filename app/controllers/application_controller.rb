class ApplicationController < ActionController::API
	include Knock::Authenticable

	def authenticate_admin
		unless current_user.admin
			render json: {message: "Unauthorized"},
			status: :unauthorized
		end
	end
end
