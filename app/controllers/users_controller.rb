class UsersController < ApplicationController
  def index
    #all the users
    @users = User.all
  end
  
  
  def new
    #new user form
    @user = User.new
  end
  
  def edit
    #edit user
    @user = User.find(params[:id])
  end
  
  def create 
    #creates new instance of user
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end
  
  def destroy
    User.destroy(params[:id])
    redirect_to users_path #GET"/user"
  end
  
  def show
    #get'/users/:id'
    @user = User.find(params[:id])
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :age, :location, :bio, :prefix)
  end
end
