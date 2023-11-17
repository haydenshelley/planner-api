class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user
      render :show
    else
      render json: { Error: "User does not exist"}
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update!(
      name: params[:name] || @user.name,
      email: params[:email] || @user.email,
    )
    render :show
  end

  def delete
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "User deleted"}
  end
end
