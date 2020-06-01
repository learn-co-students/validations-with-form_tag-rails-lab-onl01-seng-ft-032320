class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    @post.valid? ? (redirect_to @post) : (render :edit)
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
