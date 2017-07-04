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
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post.update_attributes(post_params)
      flash[:success] = "Post is successfully edited!"
      redirect_to post_url(@post)
    else
      render 'edit'
    end
  end

  def destroy
    Post.find_by(id: params[:id]).destroy
    flash[:success] = "Post is successfully deleted!"
    redirect_to posts_url
  end

  private
    def post_params
      params.require(:post).permit(:content, :title)
    end
end
