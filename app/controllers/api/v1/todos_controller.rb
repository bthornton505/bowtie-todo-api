class Api::V1::TodosController < ApplicationController
  before_action :set_project

  def create
    todo = @project.todos.create(todo_params)
    json_response(message: Message.todo_created, todo: todo)
  end

  def update
    todo = Todo.find_by(id: params[:id])
    todo.update(completed: params[:completed])
    json_response(message: Message.todo_updated, todo: todo)
  end

  def destroy
    todo = Todo.find_by(id: params[:id])
    todo.destroy

    json_response(message: Message.todo_destroyed, todo: todo)
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :project_id, :completed)
  end

  def set_project
    @project = Project.find_by(id: params[:project_id])
  end
end
