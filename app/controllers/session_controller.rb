get '/login' do
	@errors = []
	@user = User.new
	erb :'/users/login'
end

post '/login' do
	@user = User.find_by(username: params[:user][:username])
	if @user && @user.authenticate(params[:user][:password])
		session[:id] = @user.id
		redirect '/posts'
	else
		@errors = ['Wrong username or password']
		erb :'users/login'
	end
end

get '/logout' do
	session.clear
	redirect '/login'
end