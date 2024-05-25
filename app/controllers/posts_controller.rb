# app/controllers/post_controller.rb
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new({title:params[:post][:title],content:params[:post][:content]})
    if @post.save
      redirect_to post_path(@post), notice: "Created"
    else
      render :new, notice: "not created", status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update({title:params[:post][:title],content:params[:post][:content]})
      redirect_to post_path(@post), notice: "Updated"
    else
      render :edit, notice: "not updated", status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy!
    redirect_to posts_url, notice: "Deleted"
  end

end
  