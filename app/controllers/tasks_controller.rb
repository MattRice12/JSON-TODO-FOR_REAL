class TasksController < ApplicationController
  def index
    render json: Task.all.to_json, status: 200
  end

  def show
    if Task.exists?(params[:id])
      render json: Task.find(params[:id]), status: 200
    else
      render json: { message: "Task not found." }, status: 404
    end
  end
end
