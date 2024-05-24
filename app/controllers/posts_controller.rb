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
    puts "++++ params #{params}"
    @post = Post.new(title: params[:post][:title], content: params[:post][:content])
    if @post.save
      redirect_to post_url(@post), notice: "Successfully Created Post"
    else
      render :new, notice: "Post is Not Created!", status: 422
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def updated
    @post= Post.find(params[:id])
    if @post.update({title: params[:post][:title], content: params[:post][:content]})
    redirect_to post_url(@post), notice: "Successfully updated !"
  else
    render :edit, notice: "Post is Not Updated!", status: 422
  end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy!
end
end