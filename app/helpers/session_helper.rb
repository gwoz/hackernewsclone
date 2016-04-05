helpers do

	def current_user
		@user = User.find(session[:id])
	end

	def logged_in?
		if current_user
			true
		else
			false
		end 
	end

end