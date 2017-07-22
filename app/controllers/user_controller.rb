class UserController < ApplicationController
  def ping
    @user = IntercomUtil::ping()
    # api_conversations = IntercomUtil::get_all_conversations
    # api_conversations.each do |i|
    #     tags = []
    #     i.tags.each do |t|
    #         tags << t.name
    #     end

    #     company = IntercomUtil::get_company_from_conversation(i)
            
    #     con = Conversation.new(
    #         intercom_id: i.id,
    #         user_intercom_id: i.user.id,
    #         tags: tags,
    #         company_name: company.try(:name),
    #         company_id: company.try(:id)
    #         )
    #     con.save!
    # end    
    @conversations = Conversation.order(params[:sort])
  end


end
