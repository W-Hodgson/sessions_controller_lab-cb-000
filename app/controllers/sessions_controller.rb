class SessionsController < ApplicationController
  def new
  end

  def create
    if !session[:name] || session[:name].empty?
      return redirect_to(controller: 'sessions', action: 'new')
    end

    session[:name] = params[:name]
    redirect_to(controller: 'applcation', action: 'hello')
  end

  def destroy
    session.delete :name
  end
end
