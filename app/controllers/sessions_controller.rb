class SessionsController < ApplicationController
  def new
  end

  def create
    if !session[:name] || session[:name].empty?
      return redirect_to(controller: 'sessions', action: 'new')
    end
  end

  def destroy
  end
end
