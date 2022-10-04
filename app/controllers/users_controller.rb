class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new

  end

  def index
    @users = User.all
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to books_path, notice:"User was successfully updated."
  end


  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction, :user_id)
  end

end
