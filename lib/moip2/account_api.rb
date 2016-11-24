module Moip2
  class AccountApi

    attr_reader :client

    def initialize(client)
      @client = client
    end

    def create(account)
      Resource::Account.new client.post("/v2/accounts", account)
    end

    def show(id)
      Resource::Account.new client.get("/v2/accounts/#{id}")
    end
  end
end
