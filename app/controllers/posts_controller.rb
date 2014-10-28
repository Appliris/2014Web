class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.order(created_at: :desc)
  end
  
  def create
   @post = current_user.posts.build(post_params)
   if @post.save
      redirect_to root_path
    else
      render :index
    end
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
