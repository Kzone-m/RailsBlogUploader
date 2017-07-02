class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post is successfully created!"
      redirect_to posts_url
    else
      render "new"
    end
  end

  def edit
  end

  def destroy
  end

  private
    def post_params
      params.require(:post).permit(:content, :title)
    end
end
