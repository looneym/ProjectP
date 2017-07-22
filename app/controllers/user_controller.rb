class UserController < ApplicationController
  def ping
    @user = IntercomUtil::ping()
  end
end
