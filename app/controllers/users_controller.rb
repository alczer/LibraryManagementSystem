class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end
  end

  def profile
    @data = Loan.where(:user_id => current_user.id).where.not(:date_out => "0001-01-01")
    @actual_data = Loan.where(:date_out => "0001-01-01", :user_id => current_user.id)
    @my_id = current_user.id
  end


end
