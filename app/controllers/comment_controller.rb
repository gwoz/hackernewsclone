get '/posts/:id/comments/new' do
	@errors = []
	@post = params[:id].to_i
  erb :'/comments/new'
end

post '/posts/:id/comments' do
	@post = Post.find(params[:id])
  @comment = Comment.new(post_id: @post.id, user_id: current_user.id, text: params[:comment][:text])
  if @comment.save
    redirect '/posts'
  else
  	@errors = @comment.errors.full_messages
    erb :'comments/new'
  end
end