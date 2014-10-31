class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.order(created_at: :desc)
  end
  
  def create
    if current_user == nil
      redirect_to error_procces_post_path
    else
      @post = current_user.posts.build(post_params)
      if @post.save
        redirect_to root_path
      else
        redirect_to error_procces_post_path
      end
    end
  end

  def destroy
  end

  def like
    @p = Post.find(params[:id])
    @p.add_or_update_evaluation(:likes, 1, current_user)
    redirect_to root_path

  end

  private
  def post_params
    params.require(:post).permit(:body,:image)
  end
end
