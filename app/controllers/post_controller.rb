# get '/posts' do
#   @posts = Post.all
#   erb :'posts/index'
# end

# get '/posts/new' do
#   erb :'posts/new'
# end

# post '/posts' do
#   @post = Post.new(params[:post])
#   if @post.save
#     redirect '/posts'
#   else
#     erb :'posts/new'
#   end
# end

# get '/posts/:id' do
#   @post = Post.find(params[:id])
#   erb :'posts/show'
# end

# get '/posts/:id/edit' do
#   @post = Post.find(params[:id]) #define intstance variable for view
#   erb :'posts/edit' #show edit Post view
# end

# put '/posts/:id' do
#   @post = Post.find(params[:id])
#   @post.assign_attributes(params[:post])
#   if @post.save
#     redirect '/posts'
#   else
#     erb :'posts/edit'
#   end
# end

# delete '/posts/:id' do
#   @post = Post.find(params[:id])
#   @post.destroy
#   redirect '/posts'
# end
# 	