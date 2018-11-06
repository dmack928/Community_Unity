class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    byebug
    respond_to do |format|
      if @user.save
        byebug


        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
