class Api::V1::ProjectsController < ApplicationController
  before_action :set_user

  def index
    projects = @user.projects
    json_response(projects)
  end

  def create
    project = @user.projects.create(project_params)
    json_response(project)
  end

  def show
    project = @user.projects.find_by(id: params[:id])
    json_response(project)
  end 

  def edit
    project = @user.projects.find_by(id: params[:id])
    json_response(project)
  end

  def update
    project = Project.find_by(id: params[:id])
    project.update(project_params)
    json_response(project)
  end

  def destroy
    project = Project.find_by(id: params[:id])
    project.destroy
    json_response(project)
  end

  private

  def project_params
    params.permit(:title, :user_id)
  end

  def set_user
    @user = current_user
  end

end
