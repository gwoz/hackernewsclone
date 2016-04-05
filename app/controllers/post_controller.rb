get '/' do
  @posts = Post.all
  @comments = Comment.all
  erb :'posts/index'
end

get '/posts' do
  @posts = Post.all
  @comments = Comment.all
  erb :'posts/index'
end

get '/posts/new' do
	@errors = []
  erb :'posts/new'
end

post '/posts' do
  @post = Post.new(user_id: current_user.id, title: params[:post][:title], link: params[:post][:link])
  if @post.save
    redirect '/posts'
  else
  	@errors = @post.errors.full_messages
    erb :'posts/new'
  end
end