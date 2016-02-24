class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def ajaxcall
    respond_to do |format|
      format.js
    end
  end

  def index
    @posts = Post.all
  end


  def show
  end


  def new
    @post = Post.new
    respond_to do |format|
      format.js
    end
  end


  def edit
    respond_to do |format|
      format.js
    end
  end


  def create
     @posts = Post.all
     @post = Post.create(post_params)
  end


  def update
    @posts = Post.all
     @post.update(post_params)
  
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name, :description)
  end

end
