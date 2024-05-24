class PostsController < ApplicationController
  def index
    @posts=Post.all
  end
  def new 
    @post=Post.new
  end
  def show 
    @post =Post.find(params[:id]) 
  end
  def create 
    @post =Post.new({title:params[:post][:title],content:params[:post][:content]})
    if @post.save
      redirect_to post_url(@post) ,notice: "creatded!"
    else
      render :new ,notice:"not Created",status:422
  end 
end
