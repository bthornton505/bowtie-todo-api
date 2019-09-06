class Api::V1::ProjectsController < ApplicationController
  before_action :set_user

  def index
    projects = @user.projects
    json_response(message: Message.successful_request, projects: projects, status: 200)
  end

  def create
    project = @user.projects.new(project_params)
    if project.valid?
      project.save
      json_response(message: Message.project_created, project: project, status: 201)
    else
      errors = project.errors.messages
      json_response(message: Message.project_failed, errors: errors, status: 400)
    end
  end

  def show
    project = @user.projects.find_by(id: params[:id])
    json_response(project)
  end

  def update
    project = Project.find_by(id: params[:id])
    if project.update(project_params)
      json_response(message: Message.project_updated, project: project, status: 201)
    else
      errors = project.errors.messages
      json_response(message: Message.update_failed, errors: errors, status: 400)
    end
  end

  def destroy
    project = Project.find_by(id: params[:id])
    project.destroy
    json_response(message: Message.project_destroyed, project: project, status: 200)
  end

  private

  def project_params
    params.permit(:title, :user_id)
  end

  def set_user
    @user = current_user
  end

end
