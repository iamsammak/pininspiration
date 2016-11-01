class Api::SessionsController < ApplicationController
  def create
    # debugger;

    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if @user
      login(@user)
      # ask about this render path
      render "api/users/show"
    else
      render(
        json: ["Invalid username or password"],
        status: 401
      )
      # status 401 is unauthorized
    end
  end

  def destroy
    @user = current_user

    if @user
      logout
      render "api/users/show"
    else
      render(
        json: ["Nobody signed in"],
        status: 404 #Not Found
      )
    end
  end
end
