post '/login' do
	session[:id] = User.find()
	redirect '/users'
end

get '/logout' do

end