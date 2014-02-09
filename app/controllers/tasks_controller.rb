class TasksController < ApplicationController
  
  def new
    @task = Task.new
  end
  
  def create
    current_user.tasks.create!(task_params)
    redirect_to current_user
  end

  private
    def task_params
      params.require(:task).permit(:caption, :description, :deadline, :notify_date)
    end
end