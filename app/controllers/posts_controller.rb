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
      redirect_to post_url(@post), notice: "created yaaaaaay!"
    else
      render :new, notice: "not created!", status: 422
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def updated
    @post= Post.find(params[:id])
    if @post.update({title: params[:post][:title], content: params[:post][:content]})
    redirect_to post_url(@post), notice: "updated yaaaaaay!"
  else
    render :edit, notice: "not updated!", status: 422
  end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy!
end
end
