class Api::V1::TodosController < ApplicationController
  before_action :set_project

  def create
    todo = @project.todos.new(todo_params)
    if todo.valid?
      todo.save
      json_response(message: Message.todo_created, todo: todo, status: 201)
    else
      errors = todo.errors.messages
      json_response(message: Message.todo_failed, errors: errors, status: 400)
    end
  end

  def update
    todo = Todo.find_by(id: params[:id])
    if todo.update(completed: params[:completed])
      json_response(message: Message.todo_updated, todo: todo, status: 201)
    else
      errors = todo.errors.messages
      json_response(message: Message.update_failed, errors: errors, status: 400)
    end
  end

  def destroy
    todo = Todo.find_by(id: params[:id])
    todo.destroy
    json_response(message: Message.todo_destroyed, todo: todo, status: 200)
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :project_id, :completed)
  end

  def set_project
    @project = Project.find_by(id: params[:project_id])
  end
end
