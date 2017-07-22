class UserController < ApplicationController
  def ping
    @user = IntercomUtil::ping()
    @conversations = IntercomUtil::get_all_conversations
  end

end
