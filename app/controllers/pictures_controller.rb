class PicturesController < ApplicationController
    
    def index
        @pictures = Picture.all
    end
    
    def show
        @picture = Picture.find(params[:id])
    end
    
    def new
        @picture = Picture.new
    end
    
    def create
        @project = Project.find(params[:project_id])
        @picture = @project.pictures.create(picture_params)
        redirect_to project_path(@project)
    end
    
    def edit
        @picture = Picture.find(params[:id])
    end
    
    def update
        @picture = Picture.find(params[:id])
        if @picture.update_attributes(picture_params)
            redirect_to(:action => 'show', :id => @picture.id)
            else
            render('index')
        end
    end
    
    
    def delete
        @picture = Picture.find(params[:id])
    end
    
    def destroy
        Picture.find(params[:id]).destroy
        redirect_to(:action => 'index')
    end
    
    private
    
    def picture_params
        params.require(:picture).permit(:thumburl, :alt, :project)
    end
    
end
