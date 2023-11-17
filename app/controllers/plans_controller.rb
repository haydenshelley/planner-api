class PlansController < ApplicationController
  def create
    @plan = Plan.new(
      user_id: current_user.id,
      title: params[:title],
      date: params[:date],
      time: params[:time],
      info: params[:info],
    )
    if @plan.save
      render json: { message: "Plan created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
