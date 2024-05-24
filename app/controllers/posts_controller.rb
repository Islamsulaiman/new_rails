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
        # puts "++++++ params #{params}"
        @post = Post.new({title: params[:post][:title] , content: params[:post][:content]})
    
        if @post.save
          redirect_to post_url base/posts(@post), notice: "Created !"
        else
    
        render :new, notice: "not Created !" , status: 422
        end

        def edit
            @post = Post.find(params[:id])
          end
        
        def update
            @post = Post.find(params[:id])
        
            if @post.update({title: params[:post][:title] , content: params[:post][:content]})
              redirect_to post_url base/posts(@post), notice: "Created !"
            else
              render :edit, notice: "not Created !" , status: 422
            end
        
        
        def destroy
            @post = Post.find(params[:id])
            @post.destroy redirect_to posts_url base/posts
            end
    end
end
