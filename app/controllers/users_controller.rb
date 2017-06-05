class UsersController < ApplicationController
  def profile
  end
  def show
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end
  end

  def profile
    @data = Loan.where(id: current_user.id)
    @my_id = current_user.id
  end


end
