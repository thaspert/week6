class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user
      if user.password == params[:password]
        # They have been authenticated!
        redirect_to movies_url
      end
    end
    redirect_to movies_url
  end

  def destroy

  end

end
