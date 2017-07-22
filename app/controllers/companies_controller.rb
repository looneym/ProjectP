class CompaniesController < ApplicationController
  def show
  end

  def index
    if params.has_key?(:intercom_id)
      @company = IntercomUtil::get_company(params[:intercom_id])
    end    
  end
end
