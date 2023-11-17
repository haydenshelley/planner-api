class PlansController < ApplicationController
  def index
    @plans = Plan.where(user_id: current_user.id)
    render :index
  end

  def create
    @plan = Plan.new(
      user_id: current_user.id,
      title: params[:title],
      date: params[:date],
      time: params[:time],
      info: params[:info],
      completed: false,
    )
    if @plan.save
      render json: { message: "Plan created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @plan = Plan.find_by(id: params[:id])
    render :show
  end

  def update
    @plan = Plan.find_by(id: params[:id])
    @plan.update!(
      title: params[:title] || @plan.title,
      date: params[:date] || @plan.date,
      time: params[:time] || @plan.time,
      info: params[:info] || @plan.info
    )
    render :show
  end

  def delete
    @plan = Plan.find_by(id: params[:id])
    @plan.update!(
      completed: true,
    )
    render json: {message: "Plan completed"}
  end
end
