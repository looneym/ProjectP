module CompanyHelper

    def get_support_cost
      return @company_convo_count * 20
    end  


    def get_cost_status
      
      total_support_cost = @company_convo_count * 20
      total_spend = @company.custom_attributes[:total_spend]


      if total_spend > total_support_cost
      return "🙂"
      elsif total_spend == total_support_cost
      return "😐"
      else
      return "😢"
      end
        
    end

end
