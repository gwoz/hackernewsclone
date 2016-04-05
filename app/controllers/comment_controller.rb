get '/comments' do
  @comments = Comment.all
  erb :'comments/index'
end

# get '/comments/new' do
#   erb :'comments/new'
# end

# post '/comments' do
#   @comment = Comment.new(params[:comment])
#   if @comment.save
#     redirect '/comments'
#   else
#     erb :'comments/new'
#   end
# end

# get '/comments/:id' do
#   @comment = Comment.find(params[:id])
#   erb :'comments/show'
# end

# get '/comments/:id/edit' do
#   @comment = Comment.find(params[:id]) #define intstance variable for view
#   erb :'comments/edit' #show edit Comment view
# end

# put '/comments/:id' do
#   @comment = Comment.find(params[:id])
#   @comment.assign_attributes(params[:comment])
#   if @comment.save
#     redirect '/comments'
#   else
#     erb :'comments/edit'
#   end
# end

# delete '/comments/:id' do
#   @comment = Comment.find(params[:id])
#   @comment.destroy
#   redirect '/comments'
# end
# 	