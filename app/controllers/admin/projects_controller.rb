class Admin::ProjectsController < ApplicationController
  def new
    @page_title = "Add Project"
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = 'Project Created'
      redirect_to admin_projects_path
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      flash[:notice] = 'Project Updated'
      redirect_to admin_projects_path
    else
      render 'edit'
    end
  end

  def destory
    @project = Project.find(params[:id])
    @project.destroy

    flash[:notice] = 'Project Removed'
    redirect_to admin_projects_path
  end

  def index
    @projects = Project.all
  end

  def show
  end

  private
  def project_params
    params.require(:project).permit(:title, :category_id, :user_id, :tags, :image, :body)
  end
end
