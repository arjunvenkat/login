class PagesController < ApplicationController
  def login
  end
  
  def create
    name = params['name']
    u = User.find_by_name(name)
    if u.present?
      redirect_to "/ideas"
    else
      redirect_to "/login"
    end
  end
end