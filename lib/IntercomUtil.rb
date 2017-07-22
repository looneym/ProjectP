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
        all_convos = []

        open_convos.each do |i|
            all_convos << i
        end   

        closed_convos.each do |i|
            all_convos << i
        end   

        return all_convos
    end
        
end    