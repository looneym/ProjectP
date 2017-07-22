module IntercomUtil
    require 'intercom'

    TOKEN = ENV["INTERCOM_PAT"]

    @intercom = Intercom::Client.new(token: TOKEN)

    def self.ping
      @intercom.users.find(id: "58ef9b6d2d192601f1a91259")
    end


    def self.get_all_conversations
        open_convos = @intercom.conversations.find_all(open: true)
        closed_convos = @intercom.conversations.find_all(open: false)
        all_convos_short = []
        all_convos_full = []

        open_convos.each do |i|
            all_convos_short << i
        end   

        closed_convos.each do |i|
            all_convos_short << i
        end   

        all_convos_short.each do |i|
            all_convos_full << @intercom.conversations.find(id: i.id)
        end
        
        return all_convos_full    

    end


    def self.get_company_from_conversation(conversation)
        user = @intercom.users.find(id: conversation.user.id)
        company = user.companies.first
    end

    def self.get_company(id)
        @intercom.companies.find(id: id)
    end




end    