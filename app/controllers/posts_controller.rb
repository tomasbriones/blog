class PostsController < ApplicationController
  def index
  end

  def dashboard
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html{ redirect_to posts_dashboard_path, notice: "lo re creaste"}
      else 
        format.html{ render :index}
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :comment, :url)
  end
  

end
