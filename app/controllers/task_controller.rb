class TaskController < ApplicationController
  def initialize
    super
    @tasks = {
      "tasks" => [
        {
          "id" => 1,
          "name" => "task1"
        },
        {
          "id" => 2,
          "name" => "task2"
        }
      ]
    }
  end

  def index
    @tasks.merge!(
      {
        "id" => 3,
        "name" => "task3"
      }
    )
  end

  def edit
    @task_id = params[:id]
    @task = @tasks[@task_id]
  end
end
