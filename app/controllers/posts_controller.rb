class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :destroy]

  def index
    @posts = Post.all
  end

  def new
    if current_user.blog = true
      @post = Post.new
      render :new
    else
      redirect_to posts_path
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Successfully created post!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Error creating new post!"
      render :new
    end
  end

  def edit
    respond_to do |format|
      format.html {redirect_to admin_index_path}
      format.js
    end
  end

  def update
    if @post.update_attributes(post_params)
      flash[:notice] = "Successfully updated post!"
      respond_to do |format|
        format.html {redirect_to admin_index_path}
        format.js
      end
    end
  end

  def show
  end

  def destroy
    if @post.destroy
      flash[:notice] = "Successfully deleted post!"
      respond_to do |format|
        format.html { redirect_to admin_index_path }
        format.js
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :author, :image, :quote)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
