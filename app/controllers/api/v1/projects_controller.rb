class Api::V1::ProjectsController < ApplicationController
  before_action :set_user

  def index
    projects = @user.projects
    render json: projects
  end

  def create
    project = @user.projects.create(project_params)
    render json: project
  end

  def show
    project = @user.projects.find_by(id: params[:id])
    render json: project
  end

  def edit
    project = @user.projects.find_by(id: params[:id])
    render json: project
  end

  def update
    project = Project.find_by(id: params[:id])
    project.update(project_params)
    render json: project
  end

  def destroy
    project = Project.find_by(id: params[:id])
    project.destroy
    render json: project
  end

  private

  def project_params
    params.permit(:title, :user_id)
  end

  def set_user
    @user = current_user
  end

end
