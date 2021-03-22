class UsersController < ApplicationController
  def index
    @busers = User.all
    render json: @users
  end
end
