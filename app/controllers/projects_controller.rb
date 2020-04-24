class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @post.save

    else

    end

  end

  private

  def project_params
    params.require(:project).permit(:title, :user_id)
  end
  
end
