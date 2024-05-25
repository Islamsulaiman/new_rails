class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
  
    # GET /users
    def index
      @users = User.all
    end
  
    # GET /users/new
    def new
      @user = User.new
    end
  
    # POST /users
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to users_path, notice: "User created successfully!"
      else
        render :new
      end
    end
  
    # GET /users/:id
    def show
    end
  
    # GET /users/:id/edit
    def edit
    end
  
    # PATCH/PUT /users/:id
    def update
      if @user.update(user_params)
        redirect_to users_path, notice: "User updated successfully!"
      else
        render :edit
      end
    end
  
    # DELETE /users/:id
    def destroy
      @user.destroy
      redirect_to users_path, notice: "User deleted successfully!"
    end
  
    private
  
    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
      params.require(:user).permit(:name, :dob, :email, :phone_number)
    end
  end
  