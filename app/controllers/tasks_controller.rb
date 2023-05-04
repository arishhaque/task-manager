class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show; end

  def new; end

  def create; end

  def edit
    @task = Task.find(params[:id])
  end

  def update; end

  def delete; end

  def destroy; end
end
