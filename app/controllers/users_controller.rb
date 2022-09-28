class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = current_user
    @books = @user.books
  end

  def index
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to books_path
  end  
  
  
  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction, :user_id)
  end 
  
end
