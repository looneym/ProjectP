class ConversationController < ApplicationController\

  def list
    @conversations = Conversation.order(params[:sort])
  end

  def company
  end

  def tag
  end

  def fetch
    api_conversations = IntercomUtil::get_all_conversations
    api_conversations.each do |i|
        tags = []
        i.tags.each do |t|
            tags << t.name
        end

        company = IntercomUtil::get_company_from_conversation(i)
            
        con = Conversation.new(
            intercom_id: i.id,
            user_intercom_id: i.user.id,
            tags: tags,
            company_name: company.try(:name),
            company_id: company.try(:id)
            )
        con.save!
    end   
  end 

end
