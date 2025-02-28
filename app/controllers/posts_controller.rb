class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    # @post = Post.find(params[:id])
    # if @post.valid?
    #   @post.update(post_params)
    #   redirect_to post_path(@post)
    # else
    #   # re-render the :new template WITHOUT throwing away the invalid @post
    #   render :edit
    # end
    @post = Post.find(params[:id])

    @post.update(post_params)

    if @post.valid?
      redirect_to post_path(@post)
    else
      render :edit
    end


  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
