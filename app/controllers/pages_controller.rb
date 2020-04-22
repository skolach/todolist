class PagesController < ApplicationController

  def index
    @projects = Project.where(:user_id => current_user)
  end
  
end
