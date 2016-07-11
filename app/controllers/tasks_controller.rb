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

  def complete
    task_com = Task.where(completed: true)
    render json: task_com.to_json, status: 200
  end

  def incomplete
    task_com = Task.where(completed: false)
    render json: task_com.to_json, status: 200
  end

  def create
    task = Task.new(body: params[:body],
                    list_id: params[:id],
                    completed: params[:completed]
                    )
    if task.save
      render json: task.to_json, status: 200
    else
      render json: task.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
    task = Task.find(params[:id])

    if task.update(body: params[:body],
                   list_id: params[:id],
                   completed: params[:completed]
                   )
      render json: task.to_json, status: 200
    else
      render json: task.errors.to_json, status: :unprocessable_entity
    end
  end

  def destroy
    if Task.exists?(params[:id])
      Task.destroy(params[:id])
      render json: { message: "Task destroyed." }, status: 200
    else
      render json: { message: "Task not found." }, status: 404
    end
  end
end
