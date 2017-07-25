class CompaniesController < ApplicationController
  def show
  end

  def index
    if params.has_key?(:intercom_id)
      @company = IntercomUtil::get_company(params[:intercom_id])
      @company_convo_count = Conversation.where(company_id: params[:intercom_id]).count
    end    
  end
end
