class UsersController < ApplicationController
  #list all users
  #def index
  #end

  #show a user
  def show
  	@user = User.find(params[:id])
  end

  #make a new user (get)
  def new
    @user = User.new
  end

  #create a new user (post)
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

  #def edit
  #end

  #def update
  #end

  #def destroy
  #end
end
