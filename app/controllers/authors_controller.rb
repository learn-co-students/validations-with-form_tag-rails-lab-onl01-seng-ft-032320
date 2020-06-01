class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    @author.valid? ? (redirect_to @author) : (render :new)
  end
  
  def edit
    @author = Author.find_by(id: params[:id])
  end

  def update
    @author = Post.find(params[:id])

    @author.update(author_params)

    redirect_to author_path(@author)
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
