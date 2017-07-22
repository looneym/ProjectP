module IntercomUtil
    require 'intercom'

    TOKEN = ENV["INTERCOM_PAT"]

    @intercom = Intercom::Client.new(token: TOKEN)

    def self.ping
      @intercom.users.find(id: "58ef9b6d2d192601f1a91259")
    end


end    