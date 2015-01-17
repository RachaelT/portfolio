class ProjectsController < ApplicationController
  def index
      @projects = Project.all
  end

  def show
      @project = Project.find(params[:id])

  end

  def new
    @category = Category.find(params[:category_id])
    @project = @category.projects.build
  end
  
  def create      
      @category = Category.find(params[:category_id])
      @project = @category.projects.build params.require(:project).permit(:name, :thumburl, :description, :post)
      if @project.save
          redirect_to(@category)
      else
          render ('new')
      end
  end

  def edit
      @project = Project.find(params[:id])
  end

  def update
      @project = Project.find(params[:id])
      if @project.update_attributes(project_params)
          redirect_to(:action => 'show', :id => @project.id)
      else
          render('index')
      end
  end

  def delete
      @project = Project.find(params[:id])
  end
  
  def destroy
      @project = Project.find(params[:id])
      @project.destroy
      redirect_to projects_path
  end
  
  private
  def project_params
    params.require(:project).permit(:name, :thumburl, :description, :post, :category)
  end
  
  
end
