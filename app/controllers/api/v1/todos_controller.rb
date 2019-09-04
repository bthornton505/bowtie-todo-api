class Api::V1::TodosController < ApplicationController
  before_action :set_project

  def index
    todos = @project.todos
    json_response(todos)
  end

  def create
    todo = @project.todo.create(todo_params)
    json_response(todo)
  end

  def update
    todo = Todo.find_by(id: params[:id])
    todo.update(todo_params)
    json_response(todo)
  end

  def destroy
    todo = Todo.find_by(id: params[:id])
    todo.destroy

    json_response(todo)
  end

  private

  def todo_params
    params.permit(:title, :completed)
  end

  def set_project
    @project = Project.find_by(id: params[:project_id])
  end
end
